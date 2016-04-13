//
//  PersonObserver.h
//  KVO_Example
//
//  Created by Josue Hernandez on 4/13/16.
//  Copyright © 2016 Josue Hernandez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface PersonObserver : NSObject

@property (strong) Person *person;

- (id)initWithPerson:(Person *)inPerson;

@end
