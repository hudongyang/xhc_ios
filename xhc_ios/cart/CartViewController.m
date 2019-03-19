//
//  CartViewController.m
//  xhc_ios
//
//  Created by dongyang on 2019/3/12.
//  Copyright © 2019 dongyang. All rights reserved.
//

#import "CartViewController.h"
#import "../lib/IconUtil.h"

@interface CartViewController ()

@end

@implementation CartViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {        
        self.tabBarItem.title = @"购物车";
        self.tabBarItem.image = [IconUtil imageWithName:@"cart" size:20 color:UIColor.blackColor];
        [self addSubviews];
    }
    
    return self;
}

- (void)addSubviews {
    UILabel *label = [[UILabel alloc] init];
    label.text = @"cart";
    label.frame = CGRectMake(10, 10, 200, 200);
    
    [self.view addSubview:label];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

@end
