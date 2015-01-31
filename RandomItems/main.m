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
        
        // Using the new intializer with the following arguments.
        // "Red Sofa", 100, A1B2C will pass to the new intializer inherited (and modified) by BNRItem
        BNRItem *item = [[BNRItem alloc] initWithItemName:@"Red Sofa"
                                           valueInDollars:100
                                             serialNumber:@"A1B2C"];
        // The %@ token is replaced with the result of sending
        // the description message to the corresponding argument
        NSLog(@"%@", item);
        
        BNRItem *itemWithName = [[BNRItem alloc] initWithItemName:@"Blue Sofa"];
        NSLog(@"%@", itemWithName);

        
        
        //Destroy the mutabe array object
        items = nil;
        
    }
    return 0;
}
