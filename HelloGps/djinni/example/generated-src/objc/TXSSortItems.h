// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from example.djinni

#import "TXSItemList.h"
#import "TXSSortOrder.h"
#import <Foundation/Foundation.h>
@class TXSSortItems;
@protocol TXSTextboxListener;


@interface TXSSortItems : NSObject

- (void)sort:(TXSSortOrder)order
       items:(nonnull TXSItemList *)items;

+ (nullable TXSSortItems *)createWithListener:(nullable id<TXSTextboxListener>)listener;

@end