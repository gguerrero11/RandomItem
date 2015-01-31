//
//  BNRItem.h
//  RandomItems
//
//  Created by Gabriel Guerrero on 1/15/15.
//  Copyright (c) 2015 Gabriel Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface BNRItem : NSObject
{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
    
}

// Class Methods (with the + sign)
+ (instancetype)randomItem;

- (instancetype)initWithItemName:(NSString *)name;

// Instance Methods (with the - sign)
// Designated initializer for BNRItem
- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber;

// Setters and Getters
- (void)setItemName: (NSString *)str;
- (NSString *)itemName;

- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;

- (void)setValueInDollars:(int)v;
- (int)valueInDollars;

- (NSDate *)dateCreated;



@end
