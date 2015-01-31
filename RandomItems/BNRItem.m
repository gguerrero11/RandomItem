//
//  BNRItem.m
//  RandomItems
//
//  Created by Gabriel Guerrero on 1/15/15.
//  Copyright (c) 2015 Gabriel Guerrero. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem


// Designated initializer for BNRItem
- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber
{
    // Call the superclass's designated initializer
    self = [super init];
    
    // Did the superclass's designated intializer succeed?
    if (self) {
        // Give the instance variables intial values
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        // Set _dateCreated to the current date and time
        _dateCreated = [[NSDate alloc] init];
    }
    
    // Return the address of the newly initialized object
    return self;

}


- (instancetype)initWithItemName:(NSString *)name
{
    return [self initWithItemName:name
                   valueInDollars:0
                     serialNumber:@""];
}



- (instancetype)init
{
    return [self initWithItemName:@"Item"];
}


- (NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
                                   self.itemName,
                                   self.serialNumber,
                                   self.valueInDollars,
                                   self.dateCreated];
    return descriptionString;
}



- (void)setItemName:(NSString *)str
{
    _itemName = str;
}

// Accessor
- (NSString *)itemName
{
    return _itemName;
}

- (void)setSerialNumber:(NSString *)str
{
    _serialNumber = str;
}

// Accessor
- (NSString *)serialNumber
{
    return _serialNumber;
}

- (void)setValueInDollars:(int)v
{
    _valueInDollars = v;
}

// Accessor
- (int)valueInDollars
{
    return _valueInDollars;
}

// Accessor
- (NSDate *)dateCreated
{
    return _dateCreated;
}

@end
