//
//  ThinMaterialViewManager.m
//  TodoListNative
//
//  Created by Nikita Tikhonov on 13.12.2023.
//

#import <React/RCTBridgeModule.h>
#import <React/RCTViewManager.h>

@interface RCT_EXTERN_MODULE(ThinMaterialViewManager, RCTViewManager)
RCT_EXPORT_VIEW_PROPERTY(material, NSString)
RCT_EXPORT_VIEW_PROPERTY(enabled, BOOL)
@end
