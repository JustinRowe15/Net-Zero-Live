//
//  PersonnelSelectionDelegate.h
//  Net Zero Live
//
//  Created by Justin and Emma on 4/21/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Personnel;
@protocol PersonnelSelectionDelegate <NSObject>

@required
-(void)selectedPersonnel:(Personnel *)newPersonnel;

@end
