//
//  RightViewController.m
//  Net Zero Live
//
//  Created by Justin and Emma on 4/20/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "RightViewController.h"
#import "Equipment.h"

@interface RightViewController ()

@end

@implementation RightViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [self refreshUI];
    [super viewDidLoad];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setEquipment:(Equipment *)equipment
{
    if (_equipment != equipment)
    {
        _equipment = equipment;
        
        [self refreshUI];
    }
}

-(void)refreshUI
{
    [_nameLabel setFont:[UIFont fontWithName:@"GeometricSlab712BT-BoldA" size:22]];
    [_nameEntryLabel setFont:[UIFont fontWithName:@"Georgia" size:22]];
    [_locationLabel setFont:[UIFont fontWithName:@"GeometricSlab712BT-BoldA" size:18]];
    [_locationEntryLabel setFont:[UIFont fontWithName:@"Georgia" size:18]];
    [_quantityLabel setFont:[UIFont fontWithName:@"GeometricSlab712BT-BoldA" size:18]];
    [_quantityEntryLabel setFont:[UIFont fontWithName:@"Georgia" size:18]];
    [_advisorLabel setFont:[UIFont fontWithName:@"GeometricSlab712BT-BoldA" size:18]];
    [_advisorEntryLabel setFont:[UIFont fontWithName:@"Georgia" size:18]];
   
    _nameEntryLabel.text = _equipment.equipmentName;
    _locationEntryLabel.text = _equipment.equipmentLocation;
    _quantityEntryLabel.text = _equipment.equipmentQuantity;
    _advisorEntryLabel.text = _equipment.equipmentAdvisor;
    
    self.equipmentMapView.delegate = self;
    CLLocationCoordinate2D equipmentCoordinates = CLLocationCoordinate2DMake(_equipment.equipmentLatitude, _equipment.equipmentLongitude);
    self.equipmentMapView.region = MKCoordinateRegionMakeWithDistance(equipmentCoordinates, 9000, 9000);
    self.equipmentMapView.zoomEnabled = YES;
    self.equipmentMapView.scrollEnabled = YES;
    self.equipmentMapView.mapType = MKMapTypeHybrid;
    
    /*if([CLLocationManager locationServicesEnabled])
    {
        self.equipmentMapView.showsUserLocation = YES;
        [self.equipmentMapView setUserTrackingMode:MKUserTrackingModeFollow animated:YES];
    }*/
}

-(void)selectedEquipment:(Equipment *)newEquipment
{
    [self setEquipment:newEquipment];
    
    if (_equipmentPopover != nil)
    {
        [_equipmentPopover dismissPopoverAnimated:YES];
    }
}

#pragma mark - UISplitViewDelegate methods
-(void)splitViewController:(UISplitViewController *)svc
    willHideViewController:(UIViewController *)aViewController
         withBarButtonItem:(UIBarButtonItem *)barButtonItem
      forPopoverController:(UIPopoverController *)pc
{
    //Grab a reference to the popover
    self.equipmentPopover = pc;
    
    //Set the title of the bar button item
    barButtonItem.title = @"Equipment";
    
    //Set the bar button item as the Nav Bar's leftBarButtonItem
    [_navBarItem setLeftBarButtonItem:barButtonItem animated:YES];
}

-(void)splitViewController:(UISplitViewController *)svc
    willShowViewController:(UIViewController *)aViewController
 invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    //Remove the barButtonItem.
    [_navBarItem setLeftBarButtonItem:nil animated:YES];
    
    
    //Nil out the pointer to the popover.
    _equipmentPopover = nil;
}

@end
