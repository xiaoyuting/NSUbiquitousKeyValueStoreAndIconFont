//
//  ViewController.m
//  云端测试
//
//  Created by 雨停 on 2018/1/28.
//  Copyright © 2018年 yuting. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
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
