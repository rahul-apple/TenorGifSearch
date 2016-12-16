//
//	TenorMedia.h
//
//	Create by RAHUL'S MAC MINI on 16/12/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "TenorGif.h"
#import "TenorLoopedmp4.h"
#import "TenorLoopedmp4.h"
#import "TenorGif.h"
#import "TenorLoopedmp4.h"
#import "TenorNanowebm.h"
#import "TenorGif.h"
#import "TenorLoopedmp4.h"
#import "TenorNanowebm.h"
#import "TenorNanowebm.h"

@interface TenorMedia : NSObject

@property (nonatomic, strong) TenorGif * gif;
@property (nonatomic, strong) TenorLoopedmp4 * loopedmp4;
@property (nonatomic, strong) TenorLoopedmp4 * mp4;
@property (nonatomic, strong) TenorGif * nanogif;
@property (nonatomic, strong) TenorLoopedmp4 * nanomp4;
@property (nonatomic, strong) TenorNanowebm * nanowebm;
@property (nonatomic, strong) TenorGif * tinygif;
@property (nonatomic, strong) TenorLoopedmp4 * tinymp4;
@property (nonatomic, strong) TenorNanowebm * tinywebm;
@property (nonatomic, strong) TenorNanowebm * webm;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end