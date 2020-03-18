//
//  DTFileView.h
//  DecompressTransport
//
//  Created by 岳靖翔 on 2020/3/18.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DTFileView : UIView
@property(nonatomic, strong)UILabel * titleLbel;
@property(nonatomic, strong)UIButton * moreButton;
@property(nonatomic, strong)UIButton * zipButton;
@property(nonatomic, strong)UIButton * unzipButton;

@end

NS_ASSUME_NONNULL_END
