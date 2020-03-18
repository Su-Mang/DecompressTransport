//
//  DTFileViewController.m
//  DecompressTransport
//
//  Created by 岳靖翔 on 2020/3/18.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import "DTFileViewController.h"
#import "DTFileView.h"
@interface DTFileViewController ()

@end

@implementation DTFileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.fileView = [[DTFileView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:self.fileView];
    
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
