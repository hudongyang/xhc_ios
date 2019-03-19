//
//  MyViewController.m
//  xhc_ios
//
//  Created by dongyang on 2019/3/12.
//  Copyright © 2019 dongyang. All rights reserved.
//

#import "MyViewController.h"
#import "../lib/IconUtil.h"
@interface MyViewController ()

@end

@implementation MyViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.title = @"我的";
        self.tabBarItem.image = [IconUtil imageWithName:@"my" size:22 color:UIColor.blackColor];
        
    }
    
    return self;
}

@end
