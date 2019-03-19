//
//  HomeViewController.m
//  xhc_ios
//
//  Created by dongyang on 2019/3/12.
//  Copyright © 2019 dongyang. All rights reserved.
//

#import "HomeViewController.h"
#import "../lib/IconUtil.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.tabBarItem.title = @"推荐";
        self.tabBarItem.image = [IconUtil imageWithName:@"home" size:22 color:UIColor.blackColor];
    }
    
    return self;
}

@end
