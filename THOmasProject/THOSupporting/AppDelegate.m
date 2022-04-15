//
//  AppDelegate.m
//  THOmasProject
//
//  Created by nan meng on 2021/11/14.
//

#import "AppDelegate.h"
#import "THOMainViewControlerViewController.h"
#import "THOPublicComponentsRoutingHopManager.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

/**
 *  app 基础加载完成,可以进入开发人员自己的一些配置
 */

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor redColor];
    THOMainViewControlerViewController *mainViewController = [[THOMainViewControlerViewController alloc] init];
    self.window.rootViewController = mainViewController;
    [self.window makeKeyAndVisible];
    
    [THOPublicComponentsRoutingHopManager sharedInstance];
    //加载
    return YES;
}

/**
 *  app从活跃将转向非活跃状态, 例如来了电话, 消息. 或者换气任务管理,要清掉app的状态
 *  这个时候我们需要暂停一些正在进行的任务: timers/ 降低OpenGL ES帧速率
 */

- (void)applicationWillResignActive:(UIApplication *)application {
    
}

/**
 *  使用这个方法释放被共享的资源
 *  保存用户信息
 *  停止计时器
 *  保存一些状态信息
 *  如果你的app支持后台运行, 这个方法用来代替 applicationWillTerminate: 方法,当用户退出的时候
 */

- (void)applicationDidEnterBackground:(UIApplication *)application {
    
}


/**
 *  app从后台进入非活跃的状态
 *  在这里可以解开很多在进入后台的一些暂停的任务
 */

- (void)applicationWillEnterForeground:(UIApplication *)application {
    
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    
}

- (void)applicationWillTerminate:(UIApplication *)application {
    
}


@end
