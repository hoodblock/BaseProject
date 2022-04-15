//
//  THOMainViewControlerViewController.m
//  THOmasProject
//
//  Created by nan meng on 2021/11/14.
//

#import "THOMainViewControlerViewController.h"
#import "THOPublicComponentsRoutingHopManager.h"
#import "THOUIWithCategrory/UIViewController+THOUIViewController.h"

@interface THOMainViewControlerViewController ()

@end

@implementation THOMainViewControlerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    THOPublicComponentsRoutingHopManager *manager = [THOPublicComponentsRoutingHopManager sharedInstance];
    [manager getClassDictionary];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
