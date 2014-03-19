//
//  ViewController.m
//  Farkle
//
//  Created by Charles Northup on 3/19/14.
//  Copyright (c) 2014 MobileMakers. All rights reserved.
//

#import "ViewController.h"
#import "DieLabel.h"
#import "DieLabelDelegate.h"

@interface ViewController () <DieLabelDelegate>
{
    NSMutableArray *dice;
    IBOutlet UILabel *playerTwoScore;
    IBOutlet UILabel *playerOneScore;
    BOOL whichPlayer;
}
@end

@implementation ViewController

- (void)viewDidLoad{
    
    [super viewDidLoad];
    self.die1.delegate = self;
    self.die2.delegate = self;
    self.die3.delegate = self;
    self.die4.delegate = self;
    self.die5.delegate = self;
    self.die5.delegate = self;
    dice = [NSMutableArray arrayWithObjects:self.die1, self.die2, self.die3, self.die4, self.die5, self.die6, nil];
    NSLog(@"%lu", (unsigned long)dice.count);
    NSLog(@"work");
    
}

- (IBAction)onRollButtonPressed:(id)sender {
    if ([dice containsObject:self.die1] == YES) {
        [self.die1 roll];
    }
    if ([dice containsObject:self.die2] == YES) {
        [self.die2 roll];
    }
    if ([dice containsObject:self.die3] == YES) {
        [self.die3 roll];
    }
    if ([dice containsObject:self.die4] == YES) {
        [self.die4 roll];
    }
    if ([dice containsObject:self.die5] == YES) {
        [self.die5 roll];
    }
    if ([dice containsObject:self.die6] == YES) {
        [self.die6 roll];
    }
    
}

-(void)didChooseDie:(DieLabel *)dieLabel{
    dieLabel.backgroundColor = [UIColor orangeColor];
    [dice removeObject:dieLabel];
    
    NSLog(@"%lu", (unsigned long)dice.count);
    NSLog(@"work");
}

@end
