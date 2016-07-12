//
//  Fraction.m
//  TestOC
//
//  Created by ShaBro on 16/7/12.
//  Copyright © 2016年 ShaBro. All rights reserved.
//

#import "Fraction.h"

@interface Fraction ()

@end

@implementation Fraction
{
    int numerator;
    int denominator;
}

-(void) print
{
    NSLog(@"%i/%i",numerator,denominator);
}

-(void) setNumber:(int)n
{
    numerator = n;
}

-(void) setDenominator:(int)d
{
    denominator = d;
}

@end
