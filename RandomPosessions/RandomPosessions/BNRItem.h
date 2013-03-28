//
//  BNRItem.h
//  RandomPosessions
//
//  Created by shen chen on 13-3-28.
//  Copyright (c) 2013年 com.bignerdranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString *itemName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
}

- (void) setItemName: (NSString *)str;
- (NSString *)itemName;

- (void) setSerialNumber: (NSString *)str;
- (NSString *)serialNumber;

- (void) setValueInDollars: (int) value;
- (int) valueInDollars;

- (NSDate *) dateCreated;

- (id) initWithItemName: (NSString *)name
         valueInDollars:(int)value
           serialNumber:(NSString *)sNumber;

@end
