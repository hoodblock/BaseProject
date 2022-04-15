//
//  THOPublicComponentsRoutingHopManager.h
//  THOmasProject
//
//  Created by nan meng on 2021/11/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface THOPublicComponentsRoutingHopManager : NSObject

+ (THOPublicComponentsRoutingHopManager *)sharedInstance;

- (void)getClassDictionary;

@end

NS_ASSUME_NONNULL_END
