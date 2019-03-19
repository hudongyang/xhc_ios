//
//  MemberViewController.m
//  xhc_ios
//
//  Created by dongyang on 2019/3/12.
//  Copyright © 2019 dongyang. All rights reserved.
//

#import "MemberViewController.h"
#import "../lib/IconUtil.h"

@interface MemberViewController ()

@end

@implementation MemberViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.title = @"会员";
        self.tabBarItem.image = [IconUtil imageWithName:@"member" size:24 color:UIColor.blackColor];
    }
    
    return self;
}

@end
