//
//  ViewController.m
//  Const
//
//  Created by Zhuge_Mac on 16/12/7.
//  Copyright © 2016年 Magic. All rights reserved.
//

#import "ViewController.h"
/*
 const与宏的区别
 1.>编译时刻:const编译时,宏为预编译
 2.>编译检查:const检查,宏不检查
 3.>宏的好处:可以定义代码
 4.>宏的坏处:编译时间过长,字符串常量建议使用const
 5.>宏不会增加内存
 
 const
 1.>const修饰(基本变量/指针变量/对象变量)
 2.>const修饰的右边变量,标示只读
 3.>应用场景:修饰全局只读变量,在方法中修饰只读参数
 */
NSString * const ZGLoginout = @"ZGLoginout";//修饰全局只读变量

#define ZGLoginInKey @"ZGLoginInKey"

@interface ViewController ()

@end

@implementation ViewController

// 修饰只读参数
- (void)test:(int const *)p
{
    NSLog(@"%d",*p);
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    ZGLoginout = @"111";
    NSString * str1 = ZGLoginInKey;
    NSString * str2 = ZGLoginInKey;
    NSLog(@"%p-%p-%p",str1,str2,ZGLoginInKey);// 均为同一地址
    
    // const
    int a = 1;
    int b = 2;
    int *p = &a;
    p = &b;
    [self test:p];
    //
    int * const p1 = &a;// p1只读
//    p1 = &b;
    int const * p2 = &a; // *p2只读
//    *p2 = b;
    int const * const p3 = &a; // p3 *p3均为只读(const int * const p3 = &a;等价)
//    p3 = &b;
//    *p3 = b;
    
}

@end
