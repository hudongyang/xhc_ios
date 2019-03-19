//
//  HomeViewController.m
//  xhc_ios
//
//  Created by dongyang on 2019/3/12.
//  Copyright © 2019 dongyang. All rights reserved.
//

#import "StoreHomeViewController.h"
#import "../lib/IconUtil.h"
#import "SearchBarView.h"

@interface StoreHomeViewController ()

@property (nonatomic) UIScrollView *scrollView;

@end

@implementation StoreHomeViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.tabBarItem.title = @"商城";
        self.tabBarItem.image = [IconUtil imageWithName:@"store" size:20 color:UIColor.blackColor];
        self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
        self.scrollView.pagingEnabled = YES;
        self.scrollView.showsHorizontalScrollIndicator = NO;
//        self.scrollView.delegate = self;
        [self.view addSubview:self.scrollView];
        [self addSubviews];
    }
    
    return self;
}

- (void)addSubviews {
    CGRect frame = self.view.bounds;
    CGPoint origin = frame.origin;
    CGSize size = frame.size;
    
    SearchBarView *searchBar = [[SearchBarView alloc] initWithFrame:CGRectMake(origin.x, 28, size.width, 32)];
    
    UIScrollView *first = [[UIScrollView alloc] initWithFrame:frame];
    first.contentSize = CGSizeMake(frame.size.width, frame.size.height * 3);
    [first addSubview:searchBar];
    
    UIImage *image = [IconUtil imageWithName:@"store" size:20 color:UIColor.redColor];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.frame = CGRectMake(100, 100, 20, 20);
    CGRect secondFrame = CGRectMake(frame.origin.x + frame.size.width, frame.origin.y, frame.size.width, frame.size.height);
    UIView *second = [[UIView alloc] initWithFrame:secondFrame];
    second.backgroundColor = UIColor.cyanColor;
    [second addSubview:imageView];
    
    self.scrollView.contentSize = CGSizeMake(frame.size.width * 2, frame.size.height);
    
    [self.scrollView addSubview:first];
    [self.scrollView addSubview:second];
}

@end
