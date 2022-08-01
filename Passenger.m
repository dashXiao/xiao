//
//  Passenger.m
//  Person
//
//  Created by xyh on 2022/7/23.
//  Copyright © 2022 xyh. All rights reserved.
//

#import "Passenger.h"


@implementation Orders
- (void) setOrder:(NSString *)orderid ordertime:(NSString *)ordertime price:(CGFloat)price{
    self.orderid=orderid;
    self.ordertime=ordertime;
    self.price=price;
}
- (void) print{
    NSLog(@"order id:%@ order time:%@ price:%f",_orderid,_ordertime,_price);
}
@end

@implementation Passenger
@synthesize history;
@synthesize future;

//订票：将订单添入未出行订单数组
- (void) makeOrders:(Orders *)od{
    [future addObject:od];
}

//检票：将订单移出未出行订单数组，添入历史订单数组
- (void) check:(Orders*)od{
    [future removeObject:od];
    [history addObject:od];
}

//查看未出行订单
- (void) printFuture:(NSMutableArray *)array{
    NSLog(@"未出行订单");
    for(id od in array)
        [od print];
}
//查看历史订单
- (void) printHistory:(NSMutableArray*)array{
    NSLog(@"历史订单");
    for(id od in array)
        [od print];
}
          
@end
