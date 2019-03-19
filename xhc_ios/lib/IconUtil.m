//
//  IconUtil.m
//  xhc_ios
//
//  Created by dongyang on 2019/3/12.
//  Copyright © 2019 dongyang. All rights reserved.
//

#import "IconUtil.h"
#import "TBCityIconFont.h"

@implementation IconUtil
+ (UIImage *)imageWithName:(NSString *)name size:(NSInteger)size color:(UIColor *)color {
    NSString *code = [IconUtil iconNameMap][name];
    TBCityIconInfo *info = [[TBCityIconInfo alloc] initWithText:code size:size color:color];
    UIImage *image = [UIImage iconWithInfo: info];
    
    return image;
}

+ (NSDictionary *)iconNameMap {
    return @{
             @"store": @"\U0000e6b3",
             @"home": @"\U0000e636",
             @"cart": @"\U0000e600",
             @"my": @"\U0000e645",
             @"member": @"\U0000e604",
             @"search": @"\U0000e606"
             };
}

@end

