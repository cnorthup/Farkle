//
//  DieLabelDelegate.h
//  Farkle
//
//  Created by Charles Northup on 3/19/14.
//  Copyright (c) 2014 MobileMakers. All rights reserved.
//

#import <Foundation/Foundation.h>
@class DieLabel;

@protocol DieLabelDelegate <NSObject>

-(void)didChooseDie:(DieLabel *)dieLabel;

@end
