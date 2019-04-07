//
//  AppDelegate.h
//  SYFGCDdemo
//
//  Created by 沈宇帆 on 2019/4/6.
//  Copyright © 2019 Monash University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

