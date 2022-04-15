//
//  THOPublicComponentsRoutingHopManager.m
//  THOmasProject
//
//  Created by nan meng on 2021/11/14.
//

#import "THOPublicComponentsRoutingHopManager.h"


@interface THOPublicComponentsRoutingHopManager ()
@property (strong, nonatomic) NSFileManager *fileManager;
//项目中所有的HostExtensionwen文件
@property (strong, nonatomic) NSMutableArray *hostMutableArray;
//项目中所有的GuestExtension文件
@property (strong, nonatomic) NSMutableArray *guestMutableArray;
//项目中所有的HostExtensionwen文件内容
@property (strong, nonatomic) NSMutableDictionary *hostMutableDictionary;
//项目中所有的GuestExtension文件内容
@property (strong, nonatomic) NSMutableDictionary *guestMutableDictionary;
@end

@implementation THOPublicComponentsRoutingHopManager

+ (THOPublicComponentsRoutingHopManager *)sharedInstance {
    static THOPublicComponentsRoutingHopManager *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[THOPublicComponentsRoutingHopManager alloc] init];
    });
    return sharedInstance;
}

- (void)getClassDictionary {
    NSString *currentBasePath = [NSBundle mainBundle].bundlePath;
    NSDirectoryEnumerator *thoDirectoryEnumerotor = [self.fileManager enumeratorAtPath:currentBasePath];
    NSString *fileName = nil;
    while ((fileName = [thoDirectoryEnumerotor nextObject])) {
        if ([[fileName pathExtension] isEqualToString:@"plist"]) {
            //文件全称
            NSString *fileFullName = [currentBasePath stringByAppendingPathComponent:fileName];
            if ([fileName rangeOfString:@"HostExtension"].location != NSNotFound) {
                //找到所有的host 文件
                [self.hostMutableArray addObject:fileFullName];
                NSMutableDictionary *hostTempMutableDictionary = [[NSMutableDictionary alloc] initWithContentsOfFile:fileFullName];
                [self.hostMutableDictionary setObject:hostTempMutableDictionary forKey:@(fileFullName.hash)];
            } else if ([fileName rangeOfString:@"GuestExtension"].location != NSNotFound) {
                //找到所有的Guest文件
                [self.guestMutableArray addObject:fileFullName];
                NSMutableDictionary *GuestTempMutableDictionary = [[NSMutableDictionary alloc] initWithContentsOfFile:fileFullName];
                [self.hostMutableDictionary setObject:GuestTempMutableDictionary forKey:@(fileFullName.hash)];
            }
        }
    }
    //读取文件，转化为内容
    
}


- (NSMutableArray *)hostMutableArray {
    if(!_hostMutableArray) {
        _hostMutableArray = [[NSMutableArray alloc] init];
    }
    return _hostMutableArray;
}

- (NSMutableArray *)guestMutableArray {
    if(!_guestMutableArray) {
        _guestMutableArray = [[NSMutableArray alloc] init];
    }
    return _guestMutableArray;
}

- (NSMutableDictionary *)hostMutableDictionary {
    if (!_hostMutableDictionary) {
        _hostMutableDictionary = [NSMutableDictionary dictionary];
    }
    return _hostMutableDictionary;
}

- (NSMutableDictionary *)guestMutableDictionary {
    if (!_guestMutableDictionary) {
        _guestMutableDictionary = [NSMutableDictionary dictionary];
    }
    return _guestMutableDictionary;
}

- (NSFileManager *)fileManager {
    if (!_fileManager) {
        _fileManager = [NSFileManager defaultManager];
    }
    return _fileManager;
}


@end
