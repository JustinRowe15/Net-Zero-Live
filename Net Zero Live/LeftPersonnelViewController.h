//
//  LeftPersonnelViewController.h
//  Net Zero Live
//
//  Created by Justin and Emma on 4/21/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "PersonnelSelectionDelegate.h"

@interface LeftPersonnelViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray * people;
@property (nonatomic, assign) id<PersonnelSelectionDelegate> delegate;

@end
