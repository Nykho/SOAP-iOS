// Generated by xsd compiler for ios/objective-c
// DO NOT CHANGE!

#import <Foundation/Foundation.h>
#import "OperationRequest.h"
#import "Arguments.h"
#import "Errors.h"
#import "HTTPHeaders.h"

@implementation OperationRequest

@synthesize httpHeaders = _httpHeaders;
@synthesize requestId = _requestId;
@synthesize arguments = _arguments;
@synthesize errors = _errors;
@synthesize requestProcessingTime = _requestProcessingTime;

// class meta-data method
// note: this method is only for internal use, DO NOT CHANGE!
+(PicoClassSchema *)getClassMetaData {
    PicoClassSchema *cs = [[PicoClassSchema alloc] initWithXmlName:@"OperationRequest" nsUri:@"http://webservices.amazon.com/AWSECommerceService/2011-08-01"];
    [cs autorelease];
    return cs;
}

// property meta-data method
// note: this method is only for internal use, DO NOT CHANGE!
+(NSMutableDictionary *)getPropertyMetaData {
    NSMutableDictionary *map = [NSMutableDictionary dictionary];
    
    PicoPropertySchema *ps = nil;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"HTTPHeaders" propertyName:@"httpHeaders" type:PICO_TYPE_OBJECT clazz:[HTTPHeaders class]];
    [map setObject:ps forKey:@"httpHeaders"];
    [ps release];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"RequestId" propertyName:@"requestId" type:PICO_TYPE_STRING clazz:nil];
    [map setObject:ps forKey:@"requestId"];
    [ps release];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"Arguments" propertyName:@"arguments" type:PICO_TYPE_OBJECT clazz:[Arguments class]];
    [map setObject:ps forKey:@"arguments"];
    [ps release];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"Errors" propertyName:@"errors" type:PICO_TYPE_OBJECT clazz:[Errors class]];
    [map setObject:ps forKey:@"errors"];
    [ps release];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"RequestProcessingTime" propertyName:@"requestProcessingTime" type:PICO_TYPE_FLOAT clazz:nil];
    [map setObject:ps forKey:@"requestProcessingTime"];
    [ps release];
    
    return map;
}



-(void)dealloc {
    self.httpHeaders = nil;
    self.requestId = nil;
    self.arguments = nil;
    self.errors = nil;
    self.requestProcessingTime = nil;
    [super dealloc];
}

@end