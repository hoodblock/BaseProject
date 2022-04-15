//
//  THOBaseViewController.m
//  THOmasProject
//
//  Created by nan meng on 2021/11/14.
//

#import "THOBaseViewController.h"

@interface THOBaseViewController ()

@end

@implementation THOBaseViewController

#pragma mark ---- life cycyle

- (instancetype)init {
    self = [super init];
    if(self) {
        if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) {
            self.edgesForExtendedLayout = UIRectEdgeNone;
            self.extendedLayoutIncludesOpaqueBars = NO;
        }
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadCommonTitleView];
    [self loadCommonContentView];
    // 添加自定义的全局的侧滑返回
    [self addBaseFullScreenSlide];
    [self.view addSubview:self.baseTitleBarView];

}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    // 使状态栏和导航栏隐藏（必须写在viewWillAppear:方法里，否则无效）
    self.navigationController.navigationBarHidden = YES;
}

#pragma mark ---- init View

- (void)loadCommonTitleView {
    self.baseTitleBarView = [[UIView alloc] init];
    self.baseTitleBarView.backgroundColor = [UIColor grayColor];
//    LAY(_titleBarView.left, self.view.left, 1, 0);
//    LAY(_titleBarView.right, self.view.right, 1, 0);
//    LAY(_titleBarView.top, self.view.top, 1, 0);
//    LAYC(_titleBarView.height, 64.f);
//
//    // _titleBarBottomLine
//    _titleBarBottomLine = [UIView create];
//    _titleBarBottomLine.backgroundColor = [UIColor redColor];
//    [_titleBarView addSubview:_titleBarBottomLine];
//    LAY(_titleBarBottomLine.left, _titleBarView.left, 1, 0);
//    LAY(_titleBarBottomLine.right, _titleBarView.right, 1, 0);
//    LAY(_titleBarBottomLine.bottom, _titleBarView.bottom, 1, 0);
//    LAYC(_titleBarBottomLine.height, 1.f);
//
//
//    // _titleBarLab
//    _titleBarLab = [UILabel create];
//    _titleBarLab.font = [UIFont boldSystemFontOfSize:17];
//    _titleBarLab.textColor = [UIColor whiteColor];
//    _titleBarLab.backgroundColor = [UIColor redColor];
//    _titleBarLab.textAlignment = NSTextAlignmentCenter;
//    [_titleBarView addSubview:_titleBarLab];
//    LAY(_titleBarLab.top, _titleBarView.top, 1, 20.f);
//    LAY(_titleBarLab.centerX, _titleBarView.centerX, 1, 0);
//    LAYC(_titleBarLab.width, 200.f);
//    LAYC(_titleBarLab.height, 44.f);
//
//
//    // _leftBtn
//    _leftBtnView = [[RedPointView alloc] initWithFrame:CGRectMake(10.f, 20.f, 44.f, 44.f)];
//    _leftBtnView.backgroundColor = [UIColor clearColor];
//    [_titleBarView addSubview:_leftBtnView];
//    [_leftBtnView refreshImageName:@"pubCommon_back" target:self action:@selector(leftBtnViewClick:)];
//    LAY(_leftBtnView.left, _titleBarView.left, 1, 15.f);
//    LAY(_leftBtnView.centerY, _titleBarLab.centerY, 1, 0);
//
//
//    // _rightBtn
//    _rightBtnView = [[RedPointView alloc] initWithFrame:CGRectMake(self.view.frame.size.width-10.f-44.f, 20.f, 44.f, 44.f)];
//    _rightBtnView.backgroundColor = [UIColor clearColor];
//    [_rightBtnView refreshImageName:@"pubCommon_more" target:self action:@selector(rightBtnViewClick:)];
//    [_titleBarView addSubview:_rightBtnView];
//    LAY(_rightBtnView.right, _titleBarView.right, 1, -15.f);
//    LAY(_rightBtnView.centerY, _titleBarLab.centerY, 1, 0);
}


- (void)loadCommonContentView {
    self.baseContentView = [[UIView alloc] initWithFrame:CGRectMake(0, 64.f, self.view.frame.size.width, self.view.frame.size.height-64.f)];
    self.baseContentView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.baseContentView];
}

#pragma mark ---- event response

- (void)leftBtnViewClick:(UITapGestureRecognizer *)gesture {
    [self.navigationController popToRootViewControllerAnimated:YES];
}


- (void)rightBtnViewClick:(UITapGestureRecognizer *)gesture {
    
}

#pragma mark ---- 提供给外部的功能方法


#pragma mark - 修改导航栏控件样式
/*
    注意：一般来说，当我们想改变一个视图的某属性时，首先想到的方案应该是在视图的层级关系中找出该视图，然后改变其属性就行。
    但是此情况却有所不同。当为文本时视图为UILabel，当为图片时视图为UIImageView。
    因此在方法内部首先要清除原有视图，然后根据是显示文本或图片，而创建添加UILabel或者UIImageView。
*/
// 修改导航栏左右按钮为文本形式
- (void)changeTitleBarButtonText:(NSString *)text buttonType:(NSInteger)btnType {
//    UIView *bgView = (btnType==-1 ? _leftBtnView:_rightBtnView);
//    UIImageView *imgView = [bgView viewWithTag:11];
//    [imgView removeFromSuperview];
//    imgView = nil;
//    if(text){
//        UILabel *lab = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, bgView.frame.size.width, bgView.frame.size.height)];
//        lab.text = text;
//        lab.textColor = [UIColor whiteColor];
//        lab.font = [UIFont boldSystemFontOfSize:15];
//        lab.backgroundColor = [UIColor clearColor];
//        lab.tag = 11;
//        lab.userInteractionEnabled = YES;
//        lab.contentMode = UIViewContentModeCenter;
//        lab.textAlignment = NSTextAlignmentCenter;
//
//        [bgView addSubview:lab];
//    }
}


// 修改导航栏左右按钮为图标形式
- (void)changeTitleBarButtonImage:(NSString *)imgName buttonType:(NSInteger)btnType {
//    UIView *bgView = (btnType==-1 ? _leftBtnView:_rightBtnView);
//    UIImageView *imgView = [bgView viewWithTag:11];
//    [imgView removeFromSuperview];
//    imgView = nil;
//
//    if(imgName){
//        UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, bgView.frame.size.width, bgView.frame.size.height)];
//        imgView.image = [UIImage imageNamed:imgName];
//        imgView.backgroundColor = [UIColor clearColor];
//        imgView.tag = 11;
//        imgView.userInteractionEnabled = YES;
//        imgView.contentMode = UIViewContentModeCenter;
//        [bgView addSubview:imgView];
//    }
}


#pragma mark - 加载动画的显示、隐藏

// 显示、出现tipView
- (void)showTipsView:(THOBaseTipsViewType)tipsType {
//    if(!_tipsType){
//        _tipsType = [[TipView alloc] init];
//    }
//
//    [_tipsType addTipViewTarget:self tipType:TipType_loadingFull];
}


// 隐藏、消失tipView
- (void)hideTipsView {
//    if(_tipsType)
//    {
//        [_tipsType removeTipView];
//    }
}



#pragma mark - 发送网络请求同时显示加载动画

- (void)startNetWorkRequestAction:(SEL)action tipsType:(THOBaseTipsViewType)tipsType {
//    [self startNetworkRequestAction:action tipType:tipsType withObject:nil];
}



- (void)startNetWorkRequestAction:(SEL)action tipsType:(THOBaseTipsViewType)tipsType withObject:(id)object
{
//    [self showTipsView:tipsType]; // 显示loading动画。
//
//    if(!action){
//        return;
//    }
//
//    [self performSelector:action withObject:object afterDelay:0];
}

#pragma mark ---- 内部功能方法

- (void)addBaseFullScreenSlide {
    // 代码略。
}

// 修改状态栏颜色
- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

#pragma mark ---- setter、getter

- (void)setIsListensKeyboard:(BOOL)isListensKeyboard {
//    if(isListensKeyboard){
//        AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
//        appDelegate.ywKeyboardDelegate = self;
//    }
}



@end
