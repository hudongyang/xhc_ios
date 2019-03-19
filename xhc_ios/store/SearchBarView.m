//
//  SearchBarView.m
//  xhc_ios
//
//  Created by dongyang on 2019/3/14.
//  Copyright © 2019 dongyang. All rights reserved.
//

#import "SearchBarView.h"
#import "../lib/IconUtil.h"
#import "../lib/UIColor+Extensions.h"

@implementation SearchBarView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addViews];
    }
    return self;
}

- (void)addViews {
    CGSize s = self.frame.size;
    NSLog(@"%@", NSStringFromCGSize(s));
//    UIView *searchInputView = [[UIView alloc] initWithFrame:CGRectMake(15, 0, 314, s.height)];
    UIView *searchInputView = [[UIView alloc] init];
    searchInputView.backgroundColor = UIColor.cyanColor;
    

//    searchInputView.backgroundColor = UIColor.whiteColor;
//    searchInputView.layer.shadowColor = [UIColor colorWithR:134 green:134 blue:134 alpha:0.17].CGColor;
//    searchInputView.layer.shadowOffset = CGSizeMake(0, 2.0);
//    searchInputView.layer.shadowRadius = 7.0;
//    searchInputView.layer.cornerRadius = 14;
//    searchInputView.layer.shadowOpacity = 1.0;
//
//    CGRect labelFrame = CGRectMake(37, 0, s.width - 122, s.height);
//    UILabel *label = [[UILabel alloc] initWithFrame:labelFrame];
//    label.text = @"小仙女必备桃花眼";
//    label.textColor = [UIColor colorNamed:@"gray"];
//    label.font = [label.font fontWithSize:13.0];
//    [searchInputView addSubview:label];
//
//    UIImage *search = [IconUtil imageWithName:@"search" size:14 color:UIColor.grayColor];
//    UIImageView *searchImgView = [[UIImageView alloc] initWithImage:search];
//    searchImgView.frame = CGRectMake(13, 9, 14, 14);
//
//    [searchInputView addSubview:searchImgView];
//
    [self addSubview:searchInputView];
    
    NSDictionary *namedMap = @{@"searchInputView": searchInputView};
    NSArray *searchHConstraint = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-15-[searchInputView]-0-|" options:0 metrics:nil views:namedMap];
//    NSArray *searchVConstraint = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[searchInputView]-0-|" options:0 metrics:nil views:namedMap];
    
    [self addConstraints:searchHConstraint];
//    [self addConstraints:searchVConstraint];
}

@end
