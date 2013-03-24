// Generated by xsd compiler for ios/objective-c
// DO NOT CHANGE!

#import <Foundation/Foundation.h>
#import "PicoClassSchema.h"
#import "PicoPropertySchema.h"
#import "PicoConstants.h"
#import "PicoBindable.h"



/**
 (public class)
 
 @ingroup AWSECommerceServicePortType
*/
@interface SimilarityLookupRequest : NSObject <PicoBindable> {

@private
    NSString *_condition;
    NSMutableArray *_itemId;
    NSString *_merchantId;
    NSMutableArray *_responseGroup;
    NSString *_similarityType;

}


/**
 (public property)
 
 type : NSString, wrapper for primitive string
*/
@property (nonatomic, retain) NSString *condition;

/**
 (public property)
 
 entry type : NSString, wrapper for primitive string
*/

@property (nonatomic, retain) NSMutableArray *itemId;

/**
 (public property)
 
 type : NSString, wrapper for primitive string
*/
@property (nonatomic, retain) NSString *merchantId;

/**
 (public property)
 
 entry type : NSString, wrapper for primitive string
*/

@property (nonatomic, retain) NSMutableArray *responseGroup;

/**
 (public property)
 
 type : NSString, wrapper for primitive string
*/
@property (nonatomic, retain) NSString *similarityType;


@end