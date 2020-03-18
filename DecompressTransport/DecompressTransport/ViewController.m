//
//  ViewController.m
//  DecompressTransport
//
//  Created by 岳靖翔 on 2020/3/18.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import "ViewController.h"
#import "DTTransmissionViewController.h"
#import "DTMineViewController.h"
#import "DTFileViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self performSelector:@selector(toLand) withObject:nil afterDelay:0];

    //[self toLand];
    
   
}
-(void)toLand {
     DTTransmissionViewController * transmissionViewController = [[DTTransmissionViewController alloc] init];
    DTMineViewController * mineViewController = [[DTMineViewController alloc] init];
    DTFileViewController * fileViewController = [[DTFileViewController alloc] init];
  
    
    UINavigationController * transmissionNavigationController = [[UINavigationController alloc]initWithRootViewController:transmissionViewController];
    UINavigationController * mineNavigationController = [[UINavigationController alloc]initWithRootViewController:mineViewController];
    UINavigationController * fileNavigationController = [[UINavigationController alloc] initWithRootViewController:fileViewController];
   
    
    [transmissionNavigationController setTitle:@"Transmission"];
    [fileNavigationController setTitle:@"File"];
    [mineNavigationController setTitle:@"MIne"];
    
    [transmissionNavigationController.tabBarItem setImage:[[UIImage imageNamed:@"transportselect.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [transmissionNavigationController.tabBarItem setSelectedImage:[[UIImage imageNamed:@"tansport.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [fileNavigationController.tabBarItem setImage:[[UIImage imageNamed:@"file.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [fileNavigationController.tabBarItem setSelectedImage:[[UIImage imageNamed:@"fileselect.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    [mineNavigationController.tabBarItem setImage:[[UIImage imageNamed:@"wode.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [mineNavigationController.tabBarItem setSelectedImage:[[UIImage imageNamed:@"lvsefenkaicankaoxianban-.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
   
    NSArray * navigationControllerArry = [NSArray arrayWithObjects:fileNavigationController,transmissionNavigationController,mineNavigationController, nil];
    
    UITabBarController * tabarController = [[UITabBarController alloc]init];
    [tabarController.tabBar setBackgroundColor:[UIColor whiteColor]];
    [tabarController.tabBar setBarTintColor:[UIColor whiteColor]];
    [tabarController.tabBar setTintColor:[UIColor  blackColor]];
    // [tabarController.tabBar setTintColor:[UIColor colorWithRed:0.937254 green:0.937254 blue:0.937254 alpha:1]];
    tabarController.viewControllers =  navigationControllerArry;
    UIViewController *topRootViewController = [[UIApplication  sharedApplication] keyWindow].rootViewController;
    
    // 在这里加一个这个样式的循环
    while (topRootViewController.presentedViewController)
    {
        // 这里固定写法
        topRootViewController = topRootViewController.presentedViewController;
    }
    // 然后再进行present操作
    [topRootViewController presentViewController:tabarController animated:YES completion:nil];
   // [self presentViewController:tabarController animated:NO completion:nil];
}




@end
