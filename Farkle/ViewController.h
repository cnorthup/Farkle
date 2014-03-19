//
//  ViewController.h
//  Farkle
//
//  Created by Charles Northup on 3/19/14.
//  Copyright (c) 2014 MobileMakers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DieLabel.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet DieLabel *die1;
@property (weak, nonatomic) IBOutlet DieLabel *die2;
@property (weak, nonatomic) IBOutlet DieLabel *die3;
@property (weak, nonatomic) IBOutlet DieLabel *die4;
@property (weak, nonatomic) IBOutlet DieLabel *die5;
@property (weak, nonatomic) IBOutlet DieLabel *die6;

@end
