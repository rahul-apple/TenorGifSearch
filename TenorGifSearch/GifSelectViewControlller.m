//
//  GifSelectViewControlller.m
//  TenorGifSearch
//
//  Created by RAHUL'S MAC MINI on 17/12/16.
//  Copyright © 2016 RAHUL'S MAC MINI. All rights reserved.
//

#import "GifSelectViewControlller.h"
#import <FLAnimatedImage/FLAnimatedImage.h>
@interface GifSelectViewControlller (){
    CGRect  intialImageFrame,NormalFrame;
    FLAnimatedImageView *imgView;
    FLAnimatedImage *image;
}

@end

@implementation GifSelectViewControlller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NormalFrame = CGRectMake(0, (SCREEN_HEIGHT-SCREEN_WIDTH)/2, SCREEN_WIDTH, SCREEN_WIDTH);
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)showImageFromView:(CGRect)intialFrame withObject:(TenorResult *)object{
    result = object;
    intialImageFrame =intialFrame;
    imgView = [[FLAnimatedImageView alloc]initWithFrame:intialFrame];
    [self.view addSubview:imgView];
    if (self.imageData) {
        FLAnimatedImage *img = [FLAnimatedImage animatedImageWithGIFData:self.imageData];
        imgView.animatedImage = img;
        [self showAnimation];
    }else{
        
    }
}
-(void)showAnimation{
    [self.view setBackgroundColor:[[UIColor blackColor]colorWithAlphaComponent:0.2f]];
    [UIView animateWithDuration:0.8 animations:^{
        imgView.frame = NormalFrame;
        [self.view setBackgroundColor:[[UIColor blackColor]colorWithAlphaComponent:1.0f]];
    } completion:^(BOOL finished) {
        [self loadGudQualityGif];
    }];
}

-(void)loadGudQualityGif{
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.mode = MBProgressHUDModeIndeterminate;
    hud.label.text = @"Loading";
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSData *data =[NSData dataWithContentsOfURL:[NSURL URLWithString:result.media[0].gif.url]];
        dispatch_async(dispatch_get_main_queue(), ^{
            [hud hideAnimated:YES];
        });
        if (data) {
            FLAnimatedImage *image1 = [FLAnimatedImage animatedImageWithGIFData:data];
            imgView.animatedImage = image1;
        }
    });
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)doneAction:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}
@end
