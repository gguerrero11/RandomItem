//
//  BNRItem.m
//  RandomItems
//
//  Created by Gabriel Guerrero on 1/15/15.
//  Copyright (c) 2015 Gabriel Guerrero. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

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

+ (instancetype)randomItem
{
    // Create an immutable array of three adjectives
    NSArray *randomAdjectiveList = @[@"Fluffy", @"Rusty", @"Shiny"];
    
    // Create an immutable array of three nouns
    NSArray *randomNounList = @[@"Bear", @"Spork", @"Mac"];
    
    // Get the index of a random ajdective/noun from the lists
    // Note: The % operator, called the modulo operator gives,
    // you the remainder. So ajdectiveIndex is a random number
    // from 0 to 2 inclusive.
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];
    NSLog(@"This is the random number in action: %d", arc4random());
    
    // Note that NSInteger is not an object, but a type definition
    // for "long"
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                                [randomAdjectiveList objectAtIndex:adjectiveIndex],
                                [randomNounList objectAtIndex:nounIndex]];
    int randomValue = arc4random() % 100;
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10];
    
    BNRItem *newItem = [[self alloc] initWithItemName:randomName
                                       valueInDollars:randomValue
                                         serialNumber:randomSerialNumber];
    return newItem;
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




@end
