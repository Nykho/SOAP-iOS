// Generated by xsd compiler for ios/objective-c
// DO NOT CHANGE!

#import <Foundation/Foundation.h>
#import "Shopping_DiscountPriceInfoType.h"
#import "Shopping_AmountType.h"

@implementation Shopping_DiscountPriceInfoType

@synthesize originalRetailPrice = _originalRetailPrice;
@synthesize minimumAdvertisedPrice = _minimumAdvertisedPrice;
@synthesize minimumAdvertisedPriceExposure = _minimumAdvertisedPriceExposure;
@synthesize pricingTreatment = _pricingTreatment;
@synthesize soldOneBay = _soldOneBay;
@synthesize soldOffeBay = _soldOffeBay;
@synthesize any = _any;

// class meta-data method
// note: this method is only for internal use, DO NOT CHANGE!
+(PicoClassSchema *)getClassMetaData {
    return nil;
}

// property meta-data method
// note: this method is only for internal use, DO NOT CHANGE!
+(NSMutableDictionary *)getPropertyMetaData {
    NSMutableDictionary *map = [NSMutableDictionary dictionary];
    
    PicoPropertySchema *ps = nil;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"OriginalRetailPrice" propertyName:@"originalRetailPrice" type:PICO_TYPE_OBJECT clazz:[Shopping_AmountType class]];
    [map setObject:ps forKey:@"originalRetailPrice"];
    [ps release];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"MinimumAdvertisedPrice" propertyName:@"minimumAdvertisedPrice" type:PICO_TYPE_OBJECT clazz:[Shopping_AmountType class]];
    [map setObject:ps forKey:@"minimumAdvertisedPrice"];
    [ps release];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"MinimumAdvertisedPriceExposure" propertyName:@"minimumAdvertisedPriceExposure" type:PICO_TYPE_ENUM clazz:nil];
    [map setObject:ps forKey:@"minimumAdvertisedPriceExposure"];
    [ps release];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"PricingTreatment" propertyName:@"pricingTreatment" type:PICO_TYPE_ENUM clazz:nil];
    [map setObject:ps forKey:@"pricingTreatment"];
    [ps release];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"SoldOneBay" propertyName:@"soldOneBay" type:PICO_TYPE_BOOL clazz:nil];
    [map setObject:ps forKey:@"soldOneBay"];
    [ps release];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"SoldOffeBay" propertyName:@"soldOffeBay" type:PICO_TYPE_BOOL clazz:nil];
    [map setObject:ps forKey:@"soldOffeBay"];
    [ps release];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ANY_ELEMENT xmlName:@"any" propertyName:@"any" type:PICO_TYPE_ANYELEMENT clazz:nil];
    [map setObject:ps forKey:@"any"];
    [ps release];
    
    return map;
}



-(void)dealloc {
    self.originalRetailPrice = nil;
    self.minimumAdvertisedPrice = nil;
    self.minimumAdvertisedPriceExposure = nil;
    self.pricingTreatment = nil;
    self.soldOneBay = nil;
    self.soldOffeBay = nil;
    self.any = nil;
    [super dealloc];
}

@end