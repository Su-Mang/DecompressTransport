//
//  DTTransmissionViewController.m
//  DecompressTransport
//
//  Created by 岳靖翔 on 2020/3/18.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import "DTTransmissionViewController.h"
#import "DTTransmissionView.h"
@interface DTTransmissionViewController ()

@end

@implementation DTTransmissionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.transmissionView = [[DTTransmissionView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:self.transmissionView];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
