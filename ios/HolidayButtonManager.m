//
//  HolidayButtonManager.m
//  TodoListNative
//
//  Created by Nikita Tikhonov on 11.12.2023.
//
#import <React/RCTBridgeModule.h>
#import <React/RCTViewManager.h>

@interface RCT_EXTERN_MODULE(HolidayButtonViewManager, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(text, NSString)

@end
