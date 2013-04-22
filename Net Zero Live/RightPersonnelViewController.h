//
//  RightPersonnelViewController.h
//  Net Zero Live
//
//  Created by Justin and Emma on 4/21/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "PersonnelSelectionDelegate.h"

@class Personnel;
@interface RightPersonnelViewController : UIViewController <MKMapViewDelegate, PersonnelSelectionDelegate, UISplitViewControllerDelegate>

@property (nonatomic, strong) Personnel * personnel;
@property (nonatomic, weak) IBOutlet UILabel * nameLabel;
@property (nonatomic, weak) IBOutlet UILabel * currentLocationLabel;
@property (nonatomic, weak) IBOutlet UILabel * previousLocationLabel;
@property (nonatomic, weak) IBOutlet UILabel * cellNumberLabel;
@property (nonatomic, weak) IBOutlet UIImageView * personnelImageView;

@property (nonatomic, weak) IBOutlet UILabel * nameEntryLabel;
@property (nonatomic, weak) IBOutlet UILabel * currentLocationEntryLabel;
@property (nonatomic, weak) IBOutlet UILabel * previousLocationEntryLabel;
@property (nonatomic, weak) IBOutlet UILabel * cellNumberEntryLabel;
@property (nonatomic, weak) IBOutlet UILabel * aboutMeEntryLabel;

@property (weak, nonatomic) IBOutlet MKMapView *personnelMapView;

@end
