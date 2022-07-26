//
//  Passenger.h
//  Person
//
//  Created by xyh on 2022/7/23.
//  Copyright © 2022 xyh. All rights reserved.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Orders : NSObject
@property(nonatomic) NSString* orderid;
@property(nonatomic) NSDate* ordertime;
@property(nonatomic) CGFloat price;

- (void) setOrder:(NSString *)orderid ordertime:(NSString *)ordertime price:(CGFloat)price;
- (void) print;
@end

@interface Passenger : Person
// @property 属性
// 是否年满 18 岁
// 历史订单 （数组）
// 未出行订单 （数组）
@property(nonatomic) BOOL isEighteen;
@property(nonatomic) NSMutableArray* history;
@property(nonatomic) NSMutableArray* future;


// Function 方法
// 去订票
- (void) makeOrders:(Orders*)od;
// 去检票
- (void) check:(Orders*)od;

@end

NS_ASSUME_NONNULL_END
