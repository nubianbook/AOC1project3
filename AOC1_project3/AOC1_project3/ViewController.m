//
//  ViewController.m
//  AOC1_project3
//
//  Created by Carol Gaylor on 11/7/12.
//  Copyright (c) 2012 Carol Gaylor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    
    int oneValue = 10;
    int twoValue = 10;
    BOOL equalNum = [self compare:oneValue toCompare:twoValue];
    
    NSString *compareNum = [NSString stringWithFormat:@"the numbers %d and %d are equal", oneValue, twoValue];
    if (equalNum)
    {
        [self DisplayAlertWithString:compareNum];
        
    }
    // Here I am adding my numbers passing them to display and convert to NSNumber 
    NSInteger a = 86;
    NSInteger b = 70;
    NSInteger addingNumber;
    addingNumber = [self add:a toNum:b];
    NSNumber *total = [[NSNumber alloc] initWithInt:addingNumber];
    if(total != nil)
    {
        NSString *totalStrg = [total stringValue];
        NSString *myString = [NSString stringWithFormat:@"The total is %@",totalStrg];
        if (totalStrg)
        {
            [self DisplayAlertWithString:myString];
        }
    }
    
    // My appended calls-- a portion of question 4
    NSString *sent = @"One day I will make";
    NSString *senTence = @" money making apps";
    NSString *sentStrg = [self append:sent appendTo:senTence];
    //This is the alertview for these calls
    [self DisplayAlertWithString:sentStrg];
    
    
            [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


    // Create a function called Add
-(int)add:(NSInteger) a toNum:(NSInteger) b {
        NSInteger result = a+b;
        NSLog(@"%d", a+b);
        return result;
}

    // Create a BOOL function called Compare that takes two NSInteger values. Return YES or NO
-(BOOL)compare:(NSInteger) oneValue toCompare:(NSInteger) twoValue {
    
    if (oneValue == twoValue) {
        return YES;
    }else{
        return NO;
    }
}
    // 3.Create a function called Append. This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the Append method.

-(NSString *)append:(NSString *) aplace appendTo:(NSString *) bplace;
{
    NSMutableString *firstOne = [[NSMutableString alloc] initWithString:aplace];
    NSString *second = [firstOne stringByAppendingString:bplace];
                                     
    return second;
}

     // 1. 2. Display Alert With String Function area
-(void)DisplayAlertWithString:(NSString*)myString
    {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:myString message:nil delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil];
      
        if (alertView != nil) {
            [alertView show];
        }
        
        [alertView release];
   }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
