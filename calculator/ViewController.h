//
//  ViewController.h
//  calculator
//
//  Created by jaswanth on 02/06/15.
//  Copyright (c) 2015 jaswanth. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int total;
    int mode;
    NSString *valuestring;
    IBOutlet UILabel *label;
    BOOL lastButtonWasMode;
    
    
}

-(IBAction)tappedClear:(id)sender;
-(IBAction)tappedNumber:(UIButton*)btn;
-(IBAction)tappedPlus:(id)sender;
-(IBAction)tappedMinus:(id)sender;
-(IBAction)tappedMultiply:(id)sender;
-(IBAction)tappedEqulas:(id)sender;


@end

