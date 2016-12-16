//
//	TenorGifResponse.h
//
//	Create by RAHUL'S MAC MINI on 16/12/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "TenorResult.h"

@interface TenorGifResponse : NSObject

@property (nonatomic, strong) NSString * next;
@property (nonatomic, strong) NSArray * results;
@property (nonatomic, strong) NSString * weburl;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end