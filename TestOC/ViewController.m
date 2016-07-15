//
//  ViewController.m
//  TestOC
//
//  Created by ShaBro on 16/7/12.
//  Copyright © 2016年 ShaBro. All rights reserved.
//

#import "ViewController.h"
#import "Fraction.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *numerator;
@property (weak, nonatomic) IBOutlet UITextField *denominator;
@property (weak, nonatomic) IBOutlet UILabel *showLabel;

@end

@implementation ViewController

- (IBAction)showButton:(id)sender {
    //创建一个实例
    Fraction *myFraction = [[Fraction alloc] init];
    
    [myFraction setNumerator:[_numerator.text intValue]];
    [myFraction setDenominator:[_denominator.text intValue]];
    
    [myFraction show];
    
    NSString *text = [NSString stringWithFormat:@"%d%d",[myFraction getNumerator],[myFraction getDenominator]];
    
    _showLabel.text = text;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSString *string = @"This is a string";
    NSString *string2 = @"string";
    NSRange range = [string rangeOfString:string2];
    unsigned long location = range.location;
    unsigned long lenght = range.length;
    NSString *astring = [[NSString alloc] initWithString:[NSString stringWithFormat:@"Locaion:%lu,Lenght:%lu",location,lenght]];
    NSLog(@"astring:%@",astring);
    
//    NSString *temp = string substringWithRange:NSMakeRange(index1, 4)
//    NSString *trm = [string substringFromIndex:3];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
