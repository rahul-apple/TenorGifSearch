//
//  ViewController.m
//  TenorGifSearch
//
//  Created by RAHUL'S MAC MINI on 16/12/16.
//  Copyright © 2016 RAHUL'S MAC MINI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
   
    CGSize cellSize;
    TenorGifResponse *tnResponse;
    
}
@property (nonatomic, strong) NSOperationQueue *imageOperationQueue;
@property (nonatomic, strong) NSCache *imageCache;
@property (nonatomic)NSMutableArray *downloadingImagesPath;

@end

@implementation ViewController
@synthesize searchBarC ;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.imageCache = [[NSCache alloc]init];
    self.imageCache.countLimit = 50;
    self.imageOperationQueue = [[NSOperationQueue alloc]init];
    self.imageOperationQueue.maxConcurrentOperationCount = 5;
    handler = [TenorSearchHandler sharedManager];
    searchBarC.delegate = self;
    [handler searchTenorWithKeyWord:@"Cat" onSuccess:^(id responseObject, NSString *keyWord) {
        NSLog(@"RESPONSE OBJECT : %@",responseObject);
        tnResponse = [[TenorGifResponse alloc]initWithDictionary:responseObject];
        [_collectionView reloadData];
    } andOnError:^(id responseObject, NSString *keyWord, NSError *error) {
        NSLog(@"ERROR OCCURED: %@",[error localizedDescription]);
    }];
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    CGFloat width  = (SCREEN_WIDTH-6)/3;
    cellSize = CGSizeMake(width, width);
    [_collectionView layoutSubviews];
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
-(void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar {
    [searchBar setShowsCancelButton:YES animated:YES];
}

-(void)searchBarCancelButtonClicked:(UISearchBar *)searchBar {
    [searchBar setText:@""];
    [searchBar setShowsCancelButton:NO animated:YES];
    [searchBar resignFirstResponder];
}
-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
    if (searchBarC.text.length>0) {
        [handler searchTenorWithKeyWord:searchBarC.text onSuccess:^(id responseObject, NSString *keyWord) {
            NSLog(@"RESPONSE OBJECT : %@",responseObject);
            tnResponse = [[TenorGifResponse alloc]initWithDictionary:responseObject];
            [_collectionView reloadData];
        } andOnError:^(id responseObject, NSString *keyWord, NSError *error) {
            NSLog(@"ERROR OCCURED: %@",[error localizedDescription]);
        }];
    }
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return tnResponse.results.count;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    TenorCollectionViewCell *Cell = (TenorCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"TenorCollectionViewCell" forIndexPath:indexPath];
    
//    Cell.imgView.imageURL = [NSURL URLWithString:tnResponse.results[indexPath.row].media[0].nanogif.preview];
    [self loadGifImageToCell:Cell WithImageDataUrl:tnResponse.results[indexPath.row].media[0].nanogif.url];
    return Cell;
}




-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSString *imageUrl = tnResponse.results[indexPath.row].media[0].nanogif.url;
    NSData *imageData ;
    if ([self.imageCache objectForKey:imageUrl]) {
        imageData = [self.imageCache objectForKey:imageUrl];
    }else{
        imageData = nil;
    }
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    GifSelectViewControlller *VC = (GifSelectViewControlller *)[storyBoard instantiateViewControllerWithIdentifier:@"GifSelectViewControlller"];
    VC.imageData = imageData;
    TenorCollectionViewCell *Cell  = (TenorCollectionViewCell *)[collectionView cellForItemAtIndexPath:indexPath];
    CGRect frameRelativeToViewControllerView = [Cell.imgView convertRect:Cell.imgView.bounds toView:self.view];
    VC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    VC.view.backgroundColor = [UIColor clearColor];
    [self presentViewController:VC animated:true completion:^{
        
    }];
    [VC showImageFromView:frameRelativeToViewControllerView withObject:tnResponse.results[indexPath.row]];
}


-(void)loadGifImageToCell:(TenorCollectionViewCell *)cell WithImageDataUrl:(NSString *)imageUrl{
   /* dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        FLAnimatedImage *image = [FLAnimatedImage animatedImageWithGIFData:[NSData dataWithContentsOfURL:[NSURL URLWithString:imageUrl]]];
        cell.imgView.animatedImage = image;
    });*/
    NSData *imageDataFromCache = [self.imageCache objectForKey:imageUrl];
    if (imageDataFromCache) {
        [[NSOperationQueue mainQueue]addOperationWithBlock:^{
            FLAnimatedImage *image = [FLAnimatedImage animatedImageWithGIFData:imageDataFromCache];
            cell.imgView.animatedImage = image;
        }];
        imageDataFromCache = nil;
    }else{
        cell.imgView.image = [UIImage imageNamed:@"placeholder"];
        [self.imageOperationQueue addOperationWithBlock:^{
            NSURL *url_Gif = [NSURL URLWithString:imageUrl];
            NSData *data = [NSData dataWithContentsOfURL:url_Gif];
            if (data) {
                cell.imgView.image = nil;
                [self.imageCache setObject:data forKey:imageUrl];
                FLAnimatedImage *image1 = [FLAnimatedImage animatedImageWithGIFData:data];
                cell.imgView.animatedImage = image1;
            }
        }];
    }
    
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return cellSize;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
