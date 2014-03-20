//
//  ViewController.m
//  Farkle
//
//  Created by Manas Pradhan on 3/19/14.
//  Copyright (c) 2014 Manas Pradhan. All rights reserved.
//

#import "ViewController.h"
#import "DieLabel.h"
#import "DieLabelDelegate.h"

@interface ViewController () <DieLabelDelegate>

@property (strong, nonatomic) IBOutlet DieLabel *dieOne;
@property (strong, nonatomic) IBOutlet DieLabel *dieTwo;
@property (strong, nonatomic) IBOutlet DieLabel *dieThree;
@property (strong, nonatomic) IBOutlet DieLabel *dieFour;
@property (strong, nonatomic) IBOutlet DieLabel *dieFive;
@property (strong, nonatomic) IBOutlet DieLabel *dieSix;
@property NSMutableArray *dice;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];    
}

- (IBAction)onRollButtonPressed:(id)sender
{
    if (!self.dieOne.chosen)
        [self.dieOne roll];
    
    if (!self.dieTwo.chosen)
        [self.dieTwo roll];
    
    if (!self.dieThree.chosen)
        [self.dieThree roll];
    
    if (!self.dieFour.chosen)
        [self.dieFour roll];
    
    if (!self.dieFive.chosen)
        [self.dieFive roll];
    
    if (!self.dieSix.chosen)
        [self.dieSix roll];
}

- (void)didChooseDie:(id)dieLabel
{
    [self.dice addObject:dieLabel];
}

@end
