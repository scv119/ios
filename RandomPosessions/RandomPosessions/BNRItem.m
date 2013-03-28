//
//  BNRItem.m
//  RandomPosessions
//
//  Created by shen chen on 13-3-28.
//  Copyright (c) 2013年 com.bignerdranch. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem
- (NSString *) description
{
    NSString *descriptionString =
        [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recored on %@",
                                            itemName,
                                            serialNumber,
                                            valueInDollars,
         dateCreated];
    return descriptionString;
}

- (void) setItemName:(NSString *)str
{
    itemName = str;
}
- (NSString *)itemName
{
    return itemName;
}

- (void) setSerialNumber: (NSString *)str
{
    serialNumber = str;
}

- (NSString *) serialNumber
{
    return serialNumber;
}

- (void) setValueInDollars:(int)value
{
    valueInDollars = value;
}

- (int) valueInDollars
{
    return valueInDollars;
}

- (NSDate *) dateCreated
{
    return dateCreated;
}

- (id) initWithItemName:(NSString *)name valueInDollars:(int)value sNumber:(NSString *)sNumber
{
    self = [super init];
    
    [self setItemName:name];
    [self setSerialNumber:sNumber];
    [self setValueInDollars:value];
    dateCreated = [[NSDate alloc]init];
    
    return self;
}

@end
