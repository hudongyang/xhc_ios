//
//  AppDelegate.m
//  xhc_ios
//
//  Created by dongyang on 2019/3/12.
//  Copyright © 2019 dongyang. All rights reserved.
//

#import "AppDelegate.h"
#import "TBCityIconFont.h"
#import "store/StoreHomeViewController.h"
#import "cart/CartViewController.h"
#import "home/HomeViewController.h"
#import "member/MemberViewController.h"
#import "my/MyViewController.h"
#import "lib/UIColor+Extensions.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [TBCityIconFont setFontName:@"iconfont"];

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    StoreHomeViewController *storeHome = [[StoreHomeViewController alloc] init];
    CartViewController *cart = [[CartViewController alloc] init];
    HomeViewController *home = [[HomeViewController alloc] init];
    MemberViewController *member = [[MemberViewController alloc] init];
    MyViewController *my = [[MyViewController alloc] init];
    
    UITabBarController *tabbar = [[UITabBarController alloc] init];
    tabbar.viewControllers = @[home, member, storeHome, cart, my];
    tabbar.selectedIndex = 2;
    
//    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName: UIColor.blackColor} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName: UIColor.redColor} forState:UIControlStateSelected];
    [[UITabBar appearance] setTintColor:[UIColor colorWithR:255 green:49 blue:103 alpha:1]];
//    [[UITabBar appearance] setUnselectedItemTintColor:UIColor.blackColor];
    
    self.window.rootViewController = tabbar;
    [self.window makeKeyAndVisible];
    
    return YES;
}


@end
