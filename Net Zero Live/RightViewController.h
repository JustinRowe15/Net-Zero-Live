//
//  RightViewController.h
//  Net Zero Live
//
//  Created by Justin and Emma on 4/20/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "EquipmentSelectionDelegate.h"

@class Equipment;
@interface RightViewController : UIViewController <MKMapViewDelegate, EquipmentSelectionDelegate, UISplitViewControllerDelegate>

@property (nonatomic, strong) Equipment * equipment;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UILabel *quantityLabel;
@property (weak, nonatomic) IBOutlet UILabel *advisorLabel;

@property (weak, nonatomic) IBOutlet UILabel *nameEntryLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationEntryLabel;
@property (weak, nonatomic) IBOutlet UILabel *quantityEntryLabel;
@property (weak, nonatomic) IBOutlet UILabel *advisorEntryLabel;

@property (weak, nonatomic) IBOutlet MKMapView *equipmentMapView;

@property (nonatomic, weak) IBOutlet UINavigationItem * navBarItem;
@property (nonatomic, strong) UIPopoverController * equipmentPopover;

@end
