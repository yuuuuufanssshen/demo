//
//  Person.h
//  Runtime
//
//  Created by 沈宇帆 on 22/3/19.
//  Copyright © 2019 Monash University. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@end
//- (void)encodeWithCoder:(NSCoder *)aCoder
//{
//    [aCoder encodeObject:self.InsureSolutionID forKey:@"personName"];
//    [aCoder encodeObject:self.InsureSolutionName forKey:@"personAge"];
//}
//
//- (id)initWithCoder:(NSCoder *)aDecoder
//{
//    self = [super init];
//    if (self)
//    {
//        self.InsureSolutionID = [aDecoder decodeObjectForKey:@"personName"];
//        self.InsureSolutionName = [aDecoder decodeObjectForKey:@"personAge"];
//    }
//    return self;
//}
//
//以上是对该类序列化和反序列化。
//
//NSData *archiveCarPriceData = [NSKeyedArchiver archivedDataWithRootObject:self.DataArray];
//[[NSUserDefaults standardUserDefaults] setObject:archiveCarPriceData forKey:@"DataArray"];
//
//
//NSData *myEncodedObject = [[NSUserDefaults standardUserDefaults] objectForKey:@"DataArray"];
//self.dataList = [NSKeyedUnarchiver unarchiveObjectWithData: myEncodedObject];
NS_ASSUME_NONNULL_END
