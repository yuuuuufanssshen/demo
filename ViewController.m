//
//  ViewController.m
//  SYFGCDdemo
//
//  Created by 沈宇帆 on 2019/4/6.
//  Copyright © 2019 Monash University. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //同步串行队列
    dispatch_queue_t queue = dispatch_queue_create("Serial", NULL);
    dispatch_sync(queue, ^{
        NSLog(@"result1,%@", [NSThread currentThread]);
    });
    dispatch_sync(queue, ^{
        NSLog(@"result2,%@", [NSThread currentThread]);
    });
    dispatch_sync(queue, ^{
        NSLog(@"result2,%@", [NSThread currentThread]);
    });
    //同步串行不分配子线程，任务在主线程上面按照顺序执行
    
    //同步并发 同上
    dispatch_queue_t queue2 = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    dispatch_sync(queue2, ^{
        NSLog(@"result1,%@", [NSThread currentThread]);
    });
    dispatch_sync(queue2, ^{
        NSLog(@"result2,%@", [NSThread currentThread]);
    });
    dispatch_sync(queue2, ^{
        NSLog(@"result2,%@", [NSThread currentThread]);
    });
    
    //异步串行 创建了一个子线程 而且任务是按顺序执行
    dispatch_async(queue, ^{
        NSLog(@"result1,%@", [NSThread currentThread]);
    });
    dispatch_async(queue, ^{
        NSLog(@"result2,%@", [NSThread currentThread]);
    });
    dispatch_async(queue, ^{
        NSLog(@"result2,%@", [NSThread currentThread]);
    });
    
    //异步并发 创建了多个子线程
    
    dispatch_async(queue2, ^{
        NSLog(@"result1,%@", [NSThread currentThread]);
    });
    dispatch_async(queue2, ^{
        NSLog(@"result2,%@", [NSThread currentThread]);
    });
    dispatch_async(queue2, ^{
        NSLog(@"result2,%@", [NSThread currentThread]);
    });
}


@end
