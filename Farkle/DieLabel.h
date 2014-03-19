//
//  DieLabel.h
//  Farkle
//
//  Created by Charles Northup on 3/19/14.
//  Copyright (c) 2014 MobileMakers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DieLabelDelegate.h"
@interface DieLabel : UILabel
{
    int randomNumber;
}
-(void)roll;


@property id<DieLabelDelegate> delegate;




@end
