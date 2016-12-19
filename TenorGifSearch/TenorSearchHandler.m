//
//  TenorSearchHandler.m
//  TenorGifSearch
//
//  Created by RAHUL'S MAC MINI on 16/12/16.
//  Copyright © 2016 RAHUL'S MAC MINI. All rights reserved.
//

#import "TenorSearchHandler.h"
@implementation TenorSearchHandler

#pragma mark Singleton Methods
+ (id)sharedManager {
    static TenorSearchHandler *tenorSearchHandler = nil;
    static dispatch_once_t onceToken; dispatch_once(&onceToken, ^{
        tenorSearchHandler = [[self alloc] init];
    });
    return tenorSearchHandler;
}
- (id)init {
    if (self = [super init]) {
        manager = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@/%@",BASE_SEARCH_URL,API_KEY]]];
        manager.requestSerializer = [AFHTTPRequestSerializer serializer];
        [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
        [manager.requestSerializer setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-type"];
    }
    return self;
}
- (void)dealloc { 
    // Should never be called, but just here for clarity really.
}

-(void)searchTenorWithKeyWord:(NSString *)keyString onSuccess:(void(^)(id responseObject,NSString *keyWord))onSuccess andOnError:(void(^)(id responseObject,NSString *keyWord,NSError *error))onError{
    [manager GET:[NSString stringWithFormat:@"%@/%@",BASE_SEARCH_URL,API_KEY] parameters:@{@"tag":keyString,@"limit":@50} progress:^(NSProgress * _Nonnull downloadProgress) {
        NSLog(@"API Progress..%f",downloadProgress.fractionCompleted);
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        onSuccess(responseObject,keyString);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        onError(nil,keyString,error);
    }];
}

@end
