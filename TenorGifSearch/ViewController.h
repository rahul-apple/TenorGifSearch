//
//  ViewController.h
//  TenorGifSearch
//
//  Created by RAHUL'S MAC MINI on 16/12/16.
//  Copyright © 2016 RAHUL'S MAC MINI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TenorSearchHandler.h"
#import "TenorCollectionViewCell.h"
#import "TenorGifResponse.h"
#import "UIImage+animatedGIF.h"
#import "GifSelectViewControlller.h"
@interface ViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource,UISearchBarDelegate>{
    TenorSearchHandler *handler;
    
}
@property (strong, nonatomic) IBOutlet UISearchBar *searchBarC;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;


@end

