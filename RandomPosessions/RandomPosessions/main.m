//
//  main.m
//  RandomPosessions
//
//  Created by shen chen on 13-3-28.
//  Copyright (c) 2013年 com.bignerdranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSMutableArray *item = [[NSMutableArray alloc] init];
        [item addObject:@"One"];
        [item addObject:@"Two"];
        [item addObject:@"Three"];
        
        [item insertObject:@"Zero" atIndex:0];
        

        NSString *myString = @"Hello World!";
        
        NSArray* array = [[NSArray alloc] initWithArray:item];
        
        for (int i = 0; i < [array count]; ++i) {
            NSLog(@"%@ %d", [array objectAtIndex:i], i);
        }
        
        
        item = nil;
        
        BNRItem *p = [[BNRItem alloc] initWithItemName:@"Test" valueInDollars:15 serialNumber:@"111"];
        NSLog(@"%@", p);
        
    }
    
    return 0;
}

