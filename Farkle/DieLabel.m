//
//  DieLable.m
//  Farkle
//
//  Created by Manas Pradhan on 3/19/14.
//  Copyright (c) 2014 Manas Pradhan. All rights reserved.
//

#import "DieLabel.h"

@implementation DieLabel

- (IBAction)labelWasTapped:(id)sender
{
    // Custom colors generated using http://uicolor.org
    UIColor *lakeMichigan = [UIColor colorWithRed:14/255.0f green:121/255.0f blue:127/255.0f alpha:1.0f];
    UIColor *creamSpinach = [UIColor colorWithRed:147/255.0f green:224/255.0f blue:180/255.0f alpha:1.0f];
    
    [self.delegate didChooseDie:sender];
    self.chosen = YES;
    self.backgroundColor = lakeMichigan;
    self.textColor = creamSpinach;
}

- (void)roll
{
    NSInteger randomNumber = arc4random()%6+1;
    self.text = [NSString stringWithFormat:@"%d", randomNumber];
}

@end
