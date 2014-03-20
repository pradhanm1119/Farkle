//
//  DieLable.h
//  Farkle
//
//  Created by Manas Pradhan on 3/19/14.
//  Copyright (c) 2014 Manas Pradhan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DieLabelDelegate.h"

@interface DieLabel : UILabel
- (void) roll;
@property id<DieLabelDelegate> delegate;
@property BOOL chosen;
@end
