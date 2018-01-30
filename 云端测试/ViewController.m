//
//  ViewController.m
//  云端测试
//
//  Created by 雨停 on 2018/1/28.
//  Copyright © 2018年 yuting. All rights reserved.
//

#import "ViewController.h"
#import "GMFontImageList.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView  * img  = [[UIImageView alloc]initWithFrame:CGRectMake(20, 20, 16, 16)];
    img .image = [GMFontImageList iconWithName:@"i_next2"fontSize:30 color:[UIColor redColor] inset:UIEdgeInsetsMake(3, 0, 0, 0)];
    //[GMFontImageList iconWithName:@"i_store" fontSize:50 color:[UIColor redColor] padding:0];
    //[GMFontImageList iconWithName:@"i_store" fontSize:20 color:[UIColor colorWithWhite:1 alpha:0.5] withBackgroundColor:[UIColor blueColor]];
    //[GMFontImageList iconWithName:@"i_store" fontSize:20 color:[UIColor redColor] inset:UIEdgeInsetsMake(10, 20, 30, 40)];
    //[GMFontImageList iconWithName:@"i_store" fontSize:50 color:[UIColor redColor] inset:UIEdgeInsetsMake(10, 10, 50, 50) withBackgroundColor:[UIColor clearColor]];
   // [[GMFontImageList iconWithName:@"i_store" fontSize:25 color:[UIColor redColor]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.view addSubview:img];
    NSUbiquitousKeyValueStore  * kvoStore =[NSUbiquitousKeyValueStore defaultStore];
    NSString * stringValue = @"My String";
    NSString * stringValueKey=@"MyStringKey";
    BOOL boolValue  =YES;
    NSString * boolValueKey = @"MyBoolKey";
    BOOL  mustSynchronize = NO;
    if ([[kvoStore stringForKey:stringValue]length]==0){
        [kvoStore setString:stringValue forKey:stringValueKey];
        mustSynchronize=YES;
    }else{
        NSLog(@"%@",[kvoStore stringForKey:stringValueKey]);
    }
    if (![kvoStore boolForKey:boolValueKey]){
        [kvoStore setBool:boolValue forKey:boolValueKey];
        mustSynchronize =YES;
    }else{
        NSLog(@"%d",boolValue);
    }
    
    if (mustSynchronize){
        if([kvoStore  synchronize]){
            NSLog(@"success");
        }else{
             NSLog(@"faile");
        }
    }
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
