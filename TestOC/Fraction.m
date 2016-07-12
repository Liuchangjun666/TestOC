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

-(void) show
{
    NSLog(@"%i/%i",numerator,denominator);
}

-(void) setNumerator:(int)n
{
    numerator = n;
}

-(void) setDenominator:(int)d
{
    denominator = d;
}

-(int) getNumerator
{
    return numerator;
}

-(int) getDenominator
{
    return denominator;
}

@end
