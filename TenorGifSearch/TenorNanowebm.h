//
//	TenorNanowebm.h
//
//	Create by RAHUL'S MAC MINI on 16/12/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>

@interface TenorNanowebm : NSObject

@property (nonatomic, strong) NSArray * dims;
@property (nonatomic, strong) NSString * preview;
@property (nonatomic, strong) NSString * url;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
-(NSDictionary *)toDictionary;
- (instancetype)copyWithZone:(NSZone *)zone;
@end
