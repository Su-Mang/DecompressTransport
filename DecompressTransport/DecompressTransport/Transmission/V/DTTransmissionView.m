//
//  DTTransmissionView.m
//  DecompressTransport
//
//  Created by 岳靖翔 on 2020/3/18.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import "DTTransmissionView.h"
#import <Masonry.h>
@implementation DTTransmissionView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _titleLbel = [[UILabel alloc] init];
        [self addSubview:_titleLbel];
        _titleLbel.text = @"  Transmission";
        [_titleLbel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(40);
            make.width.mas_equalTo(self);
            make.height.mas_equalTo(50);
        }];
        
        _titleLbel.backgroundColor = [UIColor colorWithRed:0.2039 green:0.427 blue:0.949 alpha:1];
        _blueToothButton = [[UIButton alloc] init];
        [self addSubview:_blueToothButton];
        [_blueToothButton setTitle:@"BLUETOOTH" forState:UIControlStateNormal];
        [_blueToothButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _blueToothButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _blueToothButton.titleLabel.font = [UIFont systemFontOfSize:13];
        [_blueToothButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self->_titleLbel.mas_bottom);
            make.left.mas_equalTo(self);
            make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width/2);
            make.height.mas_equalTo(50);
        }];
        
        
        _wiFiButton = [[UIButton alloc]init];
        [self addSubview:_wiFiButton];
        _wiFiButton.titleLabel.font = [UIFont systemFontOfSize:13];
        [_wiFiButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self->_titleLbel.mas_bottom);
            make.left.mas_equalTo(self->_blueToothButton.mas_right);
            make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width/2);
            make.height.mas_equalTo(50);
        }];
        [_wiFiButton setTitle:@"WIFI" forState:UIControlStateNormal];
        [_wiFiButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _wiFiButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        
    }
    return self;
}


@end
