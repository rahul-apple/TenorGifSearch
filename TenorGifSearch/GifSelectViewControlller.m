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
    [self.done.layer setCornerRadius:3.0f];
    [self.done.layer setBorderColor:[UIColor whiteColor].CGColor];
    [self.done.layer setBorderWidth:0.8f];
    [self.cancel.layer setCornerRadius:3.0f];
    [self.cancel.layer setBorderColor:[UIColor whiteColor].CGColor];
    [self.cancel.layer setBorderWidth:0.8f];
    imgView.contentMode = UIViewContentModeScaleAspectFit;

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
    NSString *imgUrl = result.media[0].gif.url;
//    NSString *location = [self filePathForGIF:imgUrl].absoluteString;
    
        NSData *dataSaved = [NSData dataWithContentsOfURL:[self filePathForGIF:imgUrl]];
    if (dataSaved) {
        FLAnimatedImage *image1 = [FLAnimatedImage animatedImageWithGIFData:dataSaved];
        imgView.animatedImage = image1;
    }else{
    

    
    
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:imgView animated:false];
    hud.mode = MBProgressHUDModeDeterminate;
    hud.label.text = @"Loading";
        hud.userInteractionEnabled = true;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    
    NSURL *URL = [NSURL URLWithString:imgUrl];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    
    NSURLSessionDownloadTask *downloadTask = [manager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
        hud.progressObject = downloadProgress;
        
    } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
        NSURL *documentsDirectoryURL = [[NSFileManager defaultManager] URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
        NSString *exclude_Extension = [[response suggestedFilename] pathExtension];
        NSString *exclude_url = [imgUrl stringByDeletingLastPathComponent];
        NSString *filename = [NSString stringWithFormat:@"%@.%@",[exclude_url lastPathComponent],exclude_Extension];
        return [documentsDirectoryURL URLByAppendingPathComponent:filename];

            } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
                if (!error) {
                    NSLog(@"File downloaded to: %@", filePath);
                    NSData *data = [NSData dataWithContentsOfFile:filePath.path];
                    FLAnimatedImage *image1 = [FLAnimatedImage animatedImageWithGIFData:data];
                    imgView.animatedImage = image1;
                }else{
                    [self dismissViewControllerAnimated:true completion:nil];
                }
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [hud hideAnimated:true];
        });
    }];
    [downloadTask resume];
    
    
    }
}


- (NSURL *)filePathForGIF:(NSString *)file{
    NSString *exclude_Extension = @"gif";
    NSURL *documentsDirectoryURL = [[NSFileManager defaultManager] URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
    NSString *exclude_url = [file stringByDeletingLastPathComponent];
    NSString *filename = [NSString stringWithFormat:@"%@.%@",[exclude_url lastPathComponent],exclude_Extension];
    return [documentsDirectoryURL URLByAppendingPathComponent:filename];

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
//    [self dismissViewControllerAnimated:true completion:nil];
}

- (IBAction)cancelAction:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}
@end
