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
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
