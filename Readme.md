###Key-Value Observing 

- __KVO__ proporciona un mecanismo de notificación similar a las clases _NSNotification_ y _NSNotificationCenter_. La unica diferencia, en lugar de tener un objeto central _NSNotificationCenter_ que difunde las notificaciones a todos los objetos que han sidos regitrados como observadores, __KVO__ notifica directamente a los objetos que estan bjservando cuando ocurre algun cambio en la propiedad del objeto observado. 

Para utilizar __KVO__ es necesario que nuestros _getters_ y _setters_ cumplan on los estandares. 

Para hacer esto es necesario: 

- Registrarnos como Observadores. 

		[self.property addObserver:self forKeyPath:@"model" options (NSKeyValueObservingOptionNew) context:nil];
	
En este caso el observador es el objecto desde el cual se esta realizando la llamada del __addObserver__ y el objeto observado es __self.property__. 

El __KeyPath__ estecifica el atribo que queremos observar. 

En __options__ establecemos unas indicacione de tipo __KVO__ de como queremos que nos envie la notificación. Se puede especificar mas de uno que deben estar separados por " __|__ "

|  Valor | Descripción   |
|---|---|
| NSKeyValueObservingOptionNew  |  Envía el nuevo valor |
|  NSKeyValueObservingOptionOld |  Envía el antiguo valor |
| NSKeyValueObservingOptionInitial  | Se envía una notificación al observador inmediatamente  |
|  NSKeyValueObservingOptionPrior | Se envía actualizaciones separadas antes y después de que se haya ejecutado dicha modificación, en vez de solo una cuando se haya modificado  |


- Implementación de _CallBacks_


