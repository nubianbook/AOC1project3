//
//  ViewController.h
//  AOC1_project3
//
//  Created by Carol Gaylor on 11/7/12.
//  Copyright (c) 2012 Carol Gaylor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
}
//First function
-(int)add:(NSInteger) a toNum:(NSInteger) b;
-(NSString *)append:(NSString *) aplace appendTo:(NSString *) bplace;
-(void)DisplayAlertWithString:(NSString*)string;
-(BOOL)compare:(NSInteger) n1 toCompare:(NSInteger) n2;
-(void)didReceiveMemoryWarning;
@end
