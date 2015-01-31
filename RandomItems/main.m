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
        
        // add 10 random BNRItem instances to the array and log them.
        for (int i = 0; i < 10; i++){
        [items addObject:[BNRItem randomItem]];
        }
                
        for (NSString *item in items){
        NSLog(@"%@", item);
        }
        //Destroy the mutabe array object
        items = nil;
        
    }
    return 0;
}
