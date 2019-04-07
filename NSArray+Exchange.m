//
//  NSArray+Exchange.m
//  SYFArray
//
//  Created by 沈宇帆 on 2019/4/6.
//  Copyright © 2019 Monash University. All rights reserved.
//

#import "NSArray+Exchange.h"
#import <objc/runtime.h>
@implementation NSArray (Exchange)
+(void)load{
    //得到NSArray的objectAtIndex的SEL
    Method originMethod = class_getClassMethod(objc_getClass("__NSArrayI"), @selector(objectAtIndexedSubscript:));
    //得到自己定义的myObjectAtIndexSEL
    Method myMethod =class_getClassMethod(objc_getClass("__NSArrayI"), @selector(myObjectAtIndex:));
    //方法交换（两个方法的IMP进行了互换）
    method_exchangeImplementations(originMethod, myMethod);
}

-(id)myObjectAtIndex:(NSInteger)index{
    if (index > self.count -1){
        @try {
            return [self myObjectAtIndex:index];
        } @catch (NSException *exception) {
            NSLog(@"%@,%s,%@",[self class], __func__,[exception callStackSymbols]);
            return nil;
        } @finally {
            NSLog(@"other problems");
        }
    }else{
        return [self myObjectAtIndex:index];
    }
}
@end
