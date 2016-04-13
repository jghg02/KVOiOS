//
//  PersonObserver.m
//  KVO_Example
//
//  Created by Josue Hernandez on 4/13/16.
//  Copyright © 2016 Josue Hernandez. All rights reserved.
//

#import "PersonObserver.h"

@implementation PersonObserver


- (id)initWithPerson:(Person *)inPerson{

    if (self = [super init]){
        self.person = inPerson;
        
        //Agregamos el observador para el name
        [self.person addObserver:self forKeyPath:@"name" options:(NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld) context:nil];
        
        //Agregamos el observador para el rut
        [self.person addObserver:self forKeyPath:@"rut" options:(NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld) context:nil];
    }
    
    return self;
}


- (void)dealloc {
    [self.person removeObserver:self forKeyPath:@"name"];
    [self.person removeObserver:self forKeyPath:@"rut"];
}

/// MARK: - Callback KVO
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    NSString *newValue = [change objectForKey:NSKeyValueChangeNewKey];
    NSString *oldValue = [change objectForKey:NSKeyValueChangeOldKey];
    
    NSLog(@"Valor %@ --> Antes: %@ - Después: %@", keyPath, oldValue, newValue);
}

@end
