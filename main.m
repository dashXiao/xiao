//
//  main.m
//  Person
//
//  Created by xyh on 2022/7/22.
//  Copyright © 2022 xyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import"Passenger.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建一个乘客p
        Passenger *p=[[Passenger alloc] init];
        //利用父类Person的函数初始化p
        [p initWithName:@"xiaoyihan" address:@"dut" birthday:@"20011227"];
        //创建订单od0
        Orders* od0=[[Orders alloc] init];
        //初始化od0
        [od0 setOrder:@"12345" ordertime:@"202207" price:114];
        //创建订单od1
        Orders* od1=[[Orders alloc] init];
        //初始化od1
        [od1 setOrder:@"98765" ordertime:@"201703" price:514];
        //创建p的未出行订单
        [p setFuture:[[NSMutableArray alloc] init]];
        //创建p的已出行订单
        [p setHistory:[[NSMutableArray alloc] init]];
        //订票od0，od1
        [p makeOrders:od0];
        [p makeOrders:od1];
        
        //查看未出行订单
        [p printFuture:[p future]];
        //查看历史订单
        [p printHistory:[p history]];
        
        //检票od0
        [p check:od0];
        
        //after check
        //查看未出行订单
        [p printFuture:[p future]];
        //查看历史订单
        [p printHistory:[p history]];
    }
    return 0;
}
