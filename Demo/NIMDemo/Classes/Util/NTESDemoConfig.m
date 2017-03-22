//
//  NTESDemoConfig.m
//  NIM
//
//  Created by amao on 4/21/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

#import "NTESDemoConfig.h"

@interface NTESDemoConfig ()

@end

@implementation NTESDemoConfig
+ (instancetype)sharedConfig
{
    static NTESDemoConfig *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[NTESDemoConfig alloc] init];
    });
    return instance;
}

- (instancetype)init
{
    if (self = [super init])
    {
        _appKey = @"904d50f893324f8882611519d57167e4";
        _apiURL = @"https://app.netease.im/api";
        _cerName= @"ctsi2017";
    }
    return self;
}

- (NSString *)appKey
{
    return _appKey;
}

- (NSString *)apiURL
{
    NSAssert([[NIMSDK sharedSDK] isUsingDemoAppKey], @"只有 demo appKey 才能够使用这个API接口");
    return _apiURL;
}

- (NSString *)cerName
{
    return _cerName;
}


@end
