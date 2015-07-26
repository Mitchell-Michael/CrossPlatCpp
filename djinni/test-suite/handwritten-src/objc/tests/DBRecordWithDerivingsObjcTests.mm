#import "DBRecordWithDerivings+Private.h"
#import "DBRecordWithNestedDerivings+Private.h"

#import <XCTest/XCTest.h>

static DBRecordWithDerivings *record1 = [[DBRecordWithDerivings alloc] initWithKey1:1 key2:@"String1"];
static DBRecordWithDerivings *record1A = [[DBRecordWithDerivings alloc] initWithKey1:1 key2:@"String1"];
static DBRecordWithDerivings *record2 = [[DBRecordWithDerivings alloc] initWithKey1:1 key2:@"String2"];
static DBRecordWithDerivings *record3 = [[DBRecordWithDerivings alloc] initWithKey1:2 key2:@"String1"];

static DBRecordWithNestedDerivings *nestedRecord1 = [[DBRecordWithNestedDerivings alloc] initWithKey:1 rec:record1];
static DBRecordWithNestedDerivings *nestedRecord1A = [[DBRecordWithNestedDerivings alloc] initWithKey:1 rec:record1A];
static DBRecordWithNestedDerivings *nestedRecord2 = [[DBRecordWithNestedDerivings alloc] initWithKey:1 rec:record2];

@interface DBRecordWithDerivingsObjcTests : XCTestCase

@end

@implementation DBRecordWithDerivingsObjcTests

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testEqual
{
    XCTAssertEqualObjects(record1, record1A, @"1 and 1A are expected to be equal");
    XCTAssertNotEqualObjects(record1, record2, @"1 and 2 are expected to be unequal");
    XCTAssertNotEqualObjects(record1, record3, @"1 and 3 are expected to be unequal");
    XCTAssertNotEqualObjects(record2, record3, @"2 and 3 are expected to be unequal");
}

- (void)testOrder
{
    XCTAssertTrue([record1 compare:record1] == NSOrderedSame, @"1 expected to be same as itself");
    XCTAssertTrue([record1 compare:record1A] == NSOrderedSame, @"1 and 1A expected to be equal");
    XCTAssertTrue([record1 compare:record2] == NSOrderedAscending, @"1 < 2 expected");
    XCTAssertTrue([record1 compare:record3] == NSOrderedAscending, @"1 < 3 expected");
    XCTAssertTrue([record2 compare:record3] == NSOrderedAscending, @"2 < 3 expected");
    XCTAssertTrue([record2 compare:record1] == NSOrderedDescending, @"2 > 1 expected");
    XCTAssertTrue([record3 compare:record1] == NSOrderedDescending, @"3 > 1 expected");
    XCTAssertTrue([record3 compare:record2] == NSOrderedDescending, @"3 > 2 expected");
}

- (void)testNestedEqual
{
    XCTAssertEqualObjects(nestedRecord1, nestedRecord1A, @"Nested 1 and 1A expected to be equal");
    XCTAssertNotEqualObjects(nestedRecord1, nestedRecord2, @"Nested 1 and 2 expected to be unequal");
}

- (void)testNestedOrder
{
    XCTAssertTrue([nestedRecord1 compare:nestedRecord1A] == NSOrderedSame, @"1 and 1A expected to be equal");
    XCTAssertTrue([nestedRecord1 compare:nestedRecord2] == NSOrderedAscending, @"1 < 2 expected");
    XCTAssertTrue([nestedRecord2 compare:nestedRecord1] == NSOrderedDescending, @"2 > 1 expected");

}

@end
