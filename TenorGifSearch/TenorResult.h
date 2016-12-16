//
//	TenorResult.h
//
//	Create by RAHUL'S MAC MINI on 16/12/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "TenorMedia.h"

@interface TenorResult : NSObject

@property (nonatomic, strong) NSObject * composite;
@property (nonatomic, assign) CGFloat created;
@property (nonatomic, assign) BOOL hasaudio;
@property (nonatomic, assign) BOOL hascaption;
@property (nonatomic, strong) NSString * idField;
@property (nonatomic, strong) NSString * itemurl;
@property (nonatomic, strong) NSArray * media;
@property (nonatomic, assign) NSInteger shares;
@property (nonatomic, strong) NSArray * tags;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) NSString * url;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end