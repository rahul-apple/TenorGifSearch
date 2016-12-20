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
    
    NSString *urlString;
    NSDictionary *dict;

    if (keyString==nil) {
        urlString = [NSString stringWithFormat:@"https://api.tenor.co/v1/trending?%@",API_KEY];
        dict = @{};
    }else{
        urlString = [NSString stringWithFormat:@"%@/%@",BASE_SEARCH_URL,API_KEY];
        dict = @{@"tag":keyString,@"limit":@50};
    }
    
    [manager GET:urlString parameters:dict progress:^(NSProgress * _Nonnull downloadProgress) {
        NSLog(@"API Progress..%f",downloadProgress.fractionCompleted);
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        onSuccess(responseObject,keyString);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        onError(nil,keyString,error);
    }];
}

@end
