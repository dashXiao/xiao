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

- (void) makeOrders:(Orders *)od{
    [future addObject:od];
}

- (void) check:(Orders*)od{
    [future removeObject:od];
    [history addObject:od];
}

@end
