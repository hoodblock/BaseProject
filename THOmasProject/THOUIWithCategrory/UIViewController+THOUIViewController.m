//
//  UIViewController+THOUIViewController.m
//  THOmasProject
//
//  Created by nan meng on 2021/11/14.
//

#import "UIViewController+THOUIViewController.h"

/**
 
 *   app 旋转方向
 
 *  typedef NS_ENUM(NSInteger, UIInterfaceOrientation) {
        UIInterfaceOrientationUnknown            = UIDeviceOrientationUnknown,          //未知
        UIInterfaceOrientationPortrait           = UIDeviceOrientationPortrait,                                     //屏幕直立
        UIInterfaceOrientationPortraitUpsideDown = UIDeviceOrientationPortraitUpsideDown,     //屏幕直立，上下颠倒
        UIInterfaceOrientationLandscapeLeft      = UIDeviceOrientationLandscapeRight,               //屏幕向右横置
        UIInterfaceOrientationLandscapeRight     = UIDeviceOrientationLandscapeLeft             //屏幕向左横置
    } API_UNAVAILABLE(tvos);
 */



@implementation UIViewController (THOUIViewController)

- (void)viewControllerWithSupportRotion:(int)rotion {
    NSNumber *value = [NSNumber numberWithInt:rotion];
    [[UIDevice currentDevice] setValue:value forKey:@"orientation"];
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}

- (BOOL)prefersStatusBarHidden {
    return NO;
}

- (BOOL)shouldAutorotate {
    return NO;
}

@end
