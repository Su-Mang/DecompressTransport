//
//  DTFileView.m
//  DecompressTransport
//
//  Created by 岳靖翔 on 2020/3/18.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import "DTFileView.h"
#import <Masonry.h>
@implementation DTFileView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        _moreButton = [[UIButton alloc] init];
        [self addSubview:_moreButton];
        [_moreButton.titleLabel setFont:[UIFont systemFontOfSize:25]];
        [_moreButton setTitle:@"+" forState:UIControlStateNormal];
        [_moreButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_moreButton setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
        [_moreButton setBackgroundColor:[UIColor orangeColor]];
        _moreButton.layer.cornerRadius = 25;
        _moreButton.layer.masksToBounds = YES;
        [_moreButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self).offset(300);
            make.centerX.mas_equalTo(self);
            make.width.height.mas_equalTo(50);
        }];
        
        _titleLbel = [[UILabel alloc] init];
        [self addSubview:_titleLbel];
        _titleLbel.text = @"  File";
        [_titleLbel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(40);
            make.width.mas_equalTo(self);
            make.height.mas_equalTo(50);
        }];
    }
    _titleLbel.backgroundColor = [UIColor colorWithRed:0.2039 green:0.427 blue:0.949 alpha:1];
    
    _zipButton = [[UIButton alloc]init];
    [self addSubview:_zipButton];
    [_zipButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self->_titleLbel.mas_bottom);
        make.left.mas_equalTo(self);
        make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width/2);
        make.height.mas_equalTo(50);
    }];
    [_zipButton setTitle:@"ZIP" forState:UIControlStateNormal];
    [_zipButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _zipButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    _zipButton.titleLabel.font = [UIFont systemFontOfSize:13];
    
    _unzipButton = [[UIButton alloc]init];
    [self addSubview:_unzipButton];
     _unzipButton.titleLabel.font = [UIFont systemFontOfSize:13];
    [_unzipButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self->_titleLbel.mas_bottom);
        make.left.mas_equalTo(self->_zipButton.mas_right);
        make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width/2);
        make.height.mas_equalTo(50);
    }];
    [_unzipButton setTitle:@"UNZIP" forState:UIControlStateNormal];
    [_unzipButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _unzipButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    return self;
}

@end
