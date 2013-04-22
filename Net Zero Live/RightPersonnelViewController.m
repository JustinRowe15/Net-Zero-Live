//
//  RightPersonnelViewController.m
//  Net Zero Live
//
//  Created by Justin and Emma on 4/21/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "RightPersonnelViewController.h"
#import "Personnel.h"

@interface RightPersonnelViewController ()

@end

@implementation RightPersonnelViewController

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
    [self refreshPersonnel];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setPersonnel:(Personnel *)personnel
{
    if(_personnel != personnel) {
        _personnel = personnel;
        
        [self refreshPersonnel];
    }
}

-(void)refreshPersonnel
{
    [_nameLabel setFont:[UIFont fontWithName:@"GeometricSlab712BT-BoldA" size:22]];
    [_nameEntryLabel setFont:[UIFont fontWithName:@"Georgia" size:22]];
    [_currentLocationLabel setFont:[UIFont fontWithName:@"GeometricSlab712BT-BoldA" size:18]];
    [_currentLocationEntryLabel setFont:[UIFont fontWithName:@"Georgia" size:18]];
    [_previousLocationLabel setFont:[UIFont fontWithName:@"GeometricSlab712BT-BoldA" size:18]];
    [_previousLocationEntryLabel setFont:[UIFont fontWithName:@"Georgia" size:18]];
    [_cellNumberLabel setFont:[UIFont fontWithName:@"GeometricSlab712BT-BoldA" size:18]];
    [_cellNumberEntryLabel setFont:[UIFont fontWithName:@"Georgia" size:18]];
    [_aboutMeEntryLabel setFont:[UIFont fontWithName:@"Georgia" size:18]];
    
    
    _nameEntryLabel.text = _personnel.personnelName;
    _currentLocationEntryLabel.text = _personnel.personnelCurrentLocation;
    _previousLocationEntryLabel.text = _personnel.personnelPreviousLocation;
    _cellNumberEntryLabel.text = _personnel.personnelCellNumber;
    _aboutMeEntryLabel.text = _personnel.personnelAboutMe;
    _personnelImageView.image = [_personnel personnelImage];
    
    self.personnelMapView.delegate = self;
    CLLocationCoordinate2D equipmentCoordinates = CLLocationCoordinate2DMake(_personnel.personnelLatitude, _personnel.personnelLongitude);
    self.personnelMapView.region = MKCoordinateRegionMakeWithDistance(equipmentCoordinates, 9000, 9000);
    self.personnelMapView.zoomEnabled = YES;
    self.personnelMapView.scrollEnabled = YES;
    self.personnelMapView.mapType = MKMapTypeHybrid;
}

-(void)selectedPersonnel:(Personnel *)newPersonnel
{
    [self setPersonnel:newPersonnel];
}

@end
