//
//  GifSelectViewControlller.h
//  TenorGifSearch
//
//  Created by RAHUL'S MAC MINI on 17/12/16.
//  Copyright © 2016 RAHUL'S MAC MINI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TenorResult.h"
#import <MBProgressHUD/MBProgressHUD.h>
#import <AFNetworking/AFNetworking.h>
#define SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)
@interface GifSelectViewControlller : UIViewController{
    TenorResult *result;
}

@property (nonatomic, strong) NSData *imageData;
@property (weak, nonatomic) IBOutlet UIButton *cancel;
@property (weak, nonatomic) IBOutlet UIButton *done;

- (IBAction)doneAction:(id)sender;
- (IBAction)cancelAction:(id)sender;

-(void)showImageFromView:(CGRect)intialFrame withObject:(TenorResult *)object;

@end
