// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from yaml-test.djinni

#import "DBColor.h"
#import "DBRecordWithDerivings.h"
#import <Foundation/Foundation.h>

/** This file tests YAML dumped by Djinni can be parsed back in */
@interface DBExternRecordWithDerivings : NSObject
- (nonnull id)initWithMember:(nonnull DBRecordWithDerivings *)member
                           e:(DBColor)e;

@property (nonatomic, readonly, nonnull) DBRecordWithDerivings * member;

@property (nonatomic, readonly) DBColor e;

- (NSComparisonResult)compare:(nonnull DBExternRecordWithDerivings *)other;

@end
