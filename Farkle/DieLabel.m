//
//  DieLabel.m
//  Farkle
//
//  Created by Charles Northup on 3/19/14.
//  Copyright (c) 2014 MobileMakers. All rights reserved.
//

#import "DieLabel.h"

@implementation DieLabel

-(IBAction)labelWasTapped:(UITapGestureRecognizer *)sender{
    [self.delegate didChooseDie:self];
}

- (id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)roll{
    randomNumber = arc4random() % 7;
    while (randomNumber == 0) {
        randomNumber = arc4random() % 7;
        if (randomNumber != 0) {
            break;
        }
    }
    NSString *rolledNumber = [NSString stringWithFormat:@"%i",randomNumber];
    self.text = rolledNumber;
    //NSLog(@"%d", randomNumber);
}

@end
