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
        Passenger *p=[[Passenger alloc] init];
        Orders* od0=[[Orders alloc] init];
        [od0 setOrder:@"12345" ordertime:@"202207" price:114];
        Orders* od1=[[Orders alloc] init];
        [od1 setOrder:@"54321" ordertime:@"202208" price:514];
        [p setFuture:[[NSMutableArray alloc] init]];
        [p setHistory:[[NSMutableArray alloc] init]];
        [p makeOrders:od0];
        [p makeOrders:od1];
        
        for (id array in [p future]) {
            [array print];
        }
        for (id array in [p history]) {
            [array print];
        }
        [p check:od0];
        //after check
        for (id array in [p future]) {
            [array print];
        }
        for (id array in [p history]) {
            [array print];
        }
    }
    return 0;
}
