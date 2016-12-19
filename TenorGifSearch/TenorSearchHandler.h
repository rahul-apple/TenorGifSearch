//
//  TenorSearchHandler.h
//  TenorGifSearch
//
//  Created by RAHUL'S MAC MINI on 16/12/16.
//  Copyright © 2016 RAHUL'S MAC MINI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>
#define BASE_SEARCH_URL @"https://api.tenor.co/v1/search?"
#define API_KEY @"key=LIVDSRZULELA" ///Only For Development
@interface TenorSearchHandler : NSObject{
    AFHTTPSessionManager *manager;
}
+ (id)sharedManager;
-(void)searchTenorWithKeyWord:(NSString *)keyString onSuccess:(void(^)(id responseObject,NSString *keyWord))onSuccess andOnError:(void(^)(id responseObject,NSString *keyWord,NSError *error))onError;
@end
