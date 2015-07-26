// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from constants.djinni

#import "DBConstants.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-variable"

BOOL const DBConstantsBoolConstant = YES;

int8_t const DBConstantsI8Constant = 1;

int16_t const DBConstantsI16Constant = 2;

int32_t const DBConstantsI32Constant = 3;

int64_t const DBConstantsI64Constant = 4;

float const DBConstantsF32Constant = 5.0f;

double const DBConstantsF64Constant = 5.0;

NSString * __nonnull const DBConstantsStringConstant = @"string-constant";

NSNumber * __nullable const DBConstantsOptionalIntegerConstant = @1;

DBConstants * __nonnull const DBConstantsObjectConstant = [[DBConstants alloc] initWithSomeInteger:DBConstantsI32Constant
        someString:DBConstantsStringConstant];

#pragma clang diagnostic pop

@implementation DBConstants

- (id)initWithSomeInteger:(int32_t)someInteger
               someString:(nonnull NSString *)someString
{
    if (self = [super init]) {
        _someInteger = someInteger;
        _someString = [someString copy];
    }
    return self;
}

@end