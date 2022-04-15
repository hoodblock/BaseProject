//
//  THOBaseViewController.h
//  THOmasProject
//
//  Created by nan meng on 2021/11/14.
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSInteger, THOBaseTipsViewType) {
    THOBaseTipsViewTypeRefrashing,
    THOBaseTipsViewTypeHasData,
    THOBaseTipsViewTypeNoData,
    THOBaseTipsViewTypeNetWorkErrors
};

NS_ASSUME_NONNULL_BEGIN

@interface THOBaseViewController : UIViewController

/**
 * 内容View
 */
@property (strong, nonatomic) UIView *baseContentView;
/**
 * 导航栏视图
 */
@property (strong, nonatomic) UIView *baseTitleBarView;
/**
 *  导航栏返回按钮
 */
@property (strong, nonatomic) UIButton *baseBackButton;
/**
 *  导航栏上左按钮
 */
@property (strong, nonatomic) UIButton *baseLeftButton;
/**
 * 导航栏上右按钮
 */
@property (strong, nonatomic) UIButton *baseRightButton;
/**
 * 导航栏中间标题Label
 */
@property (strong, nonatomic) UILabel *baseTitleBarLabel;
/**
 * 导航栏底部分隔线
 */
@property (strong, nonatomic) UIView *baseTitleBarBottomLine;
/**
 * loading视图 可用于请求数据时
 */
@property (strong, nonatomic) UIView *baseTipView;
/**
 * 是否监听键盘改变，默认是NO
 */
@property (assign, nonatomic) BOOL baseIsListensKeyboard;
/**
 * 是否禁止手势滑动
 */
@property (assign, nonatomic) BOOL BaseIsBanGesturesSliding;


/**
 修改导航栏左右按钮为文本形式
 @param text The original request.
 @param buttonType The parameters to be encoded.
 */
- (void)changeTitleBarButtonText:(NSString *)text buttonType:(NSInteger)buttonType;


/**
 修改导航栏左右按钮为图标形式
 @param imageName The original request.
 @param buttonType The parameters to be encoded.
 */
- (void)changeTitleBarButtonImage:(NSString *)imageName buttonType:(NSInteger)buttonType;


/**
 显示、出现tipView
 */
- (void)showTipsView:(THOBaseTipsViewType)tipsType;


/**
    隐藏 / 消失 tipsView
 */
- (void)hideTipsView;


/**
    将请求网络数据和显示加载动画合并,使其一请求网络同时便开始loading动画。
 @param action The original request.
 @param tipsType The parameters to be encoded.
 */

- (void)startNetWorkRequestAction:(SEL)action tipsType:(THOBaseTipsViewType)tipsType;

/**
    将请求网络数据和显示加载动画合并,使其一请求网络同时便开始loading动画
 @param action The original request.
 @param tipsType The parameters to be encoded.
 @param object  参数
 */

- (void)startNetWorkRequestAction:(SEL)action tipsType:(THOBaseTipsViewType)tipsType withObject:(id)object;

@end

NS_ASSUME_NONNULL_END
