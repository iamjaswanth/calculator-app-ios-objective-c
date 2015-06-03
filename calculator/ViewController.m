//
//  ViewController.m
//  calculator
//
//  Created by jaswanth on 02/06/15.
//  Copyright (c) 2015 jaswanth. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    valuestring = @"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)tappedClear:(id)sender {
    total = 0;
    valuestring = @"";
    label.text = @"0";
    
}
-(IBAction)tappedNumber:(UIButton*)btn {
    int num = btn.tag;
    if (num == 0 && total == 0) {
        return;
    }
    
    if (lastButtonWasMode) {
        lastButtonWasMode = NO;
        valuestring = @"";
    }
    NSString *numAsString = [NSString stringWithFormat:@"%i",num];
    valuestring = [valuestring stringByAppendingString:numAsString];
    label.text = valuestring;
    if (total == 0) {
        total = [valuestring intValue];
    }
}
-(IBAction)tappedPlus:(id)sender {
    [self setMode:1];
    
}
-(IBAction)tappedMinus:(id)sender {
    [self setMode: -1];
    
}

-(IBAction)tappedMultiply:(id)sender {
    [self setMode: 2];
    
}
-(IBAction)tappedEqulas:(id)sender {
    
    if (mode == 0) {
        return ;
    }
    if (mode == 1) {
        total += [valuestring intValue];
    }
    if (mode == -1) {
        total -= [valuestring intValue];
    }
    if (mode ==  2) {
        total *= [valuestring intValue];
    }
    
    valuestring = [NSString stringWithFormat:@"%i",total];
    label.text = valuestring;
    mode = 0;
    
}

-(void)setMode:(int)m {
    
    mode = m;
    lastButtonWasMode = YES ;
    total = [valuestring intValue];
    
    
}

@end
