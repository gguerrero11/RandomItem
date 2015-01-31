//
//  main.m
//  RandomItems
//
//  Created by Gabriel Guerrero on 1/14/15.
//  Copyright (c) 2015 Gabriel Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        //Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        //Send the message addObject: to the NSMutableArray point to
        // by the variable itmes, passing a string each time
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        //Send another message, insertObject;atIndex:,to that same array object
        [items insertObject:@"Zero" atIndex:0];
        
        //For every item in the items array...
        for (NSString *item in items){
            //log the description of item
            NSLog(@"%@", item);
        }
        
        //creating an instance of BNRItem
        BNRItem *item = [[BNRItem alloc] init];
        
        // This creates an NSString, "Red Sofa" and gives it to the BNRItem
        [item setItemName:@"Red Sofa"];
        //item.itemName = @"Red Sofa";
        
        // This creates an NSString, "A1B2C" and gives it to the BNRItem
        [item setSerialNumber:@"A1B2C"];
        //item.serialNumber = @"A1B2C";
        
        // This sends the value 100 to be used as the valueInDollars of this BNR Item
        [item setValueInDollars:100];
        //item.valueInDollars = 100;
        
        item.valueInDollars = 50;
        
        // The %@ token is replaced with the result of sending
        // the description message to the corresponding argument
        NSLog(@"%@", item);
        
        //Destroy the mutabe array object
        items = nil;
        
    }
    return 0;
}
