//
//  LeftViewController.h
//  Net Zero Live
//
//  Created by Justin and Emma on 4/20/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "EquipmentSelectionDelegate.h"

@interface LeftViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray * solutions;
@property (nonatomic, assign) id<EquipmentSelectionDelegate> delegate;

@end
