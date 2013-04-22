//
//  Equipment.h
//  Net Zero Live
//
//  Created by Justin and Emma on 4/20/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

typedef enum {
    Sundial = 0,
    Flexfuel,
    HSeries,
    TSeries,
    NetZeroCOP,
    SolarStik,
    LiteCamp,
} Solution;

@interface Equipment : NSObject <MKMapViewDelegate>

@property (nonatomic, strong) NSString * equipmentName;
@property (nonatomic, strong) NSString * equipmentLocation;
@property (nonatomic, strong) NSString * equipmentQuantity;
@property (nonatomic, strong) NSString * equipmentAdvisor;
@property CGFloat equipmentLatitude;
@property CGFloat equipmentLongitude;
@property (nonatomic, assign) Solution solution;

+(Equipment *)newEquipmentWithName:(NSString *)equipmentName location:(NSString *)equipmentLocation quantity:(NSString *)equipmentQuantity advisor:(NSString *)equipmentAdvisor solution:(Solution)solution latitude:(CGFloat)equipmentLatitude longitude:(CGFloat)equipmentLongitude;

@end
