//
//  Personnel.h
//  Net Zero Live
//
//  Created by Justin and Emma on 4/21/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

typedef enum {
    Amadee = 0,
    Barniak,
    Bloodworth,
    Brygider,
    Deplitch,
    Fisher,
    Funderburk,
    Sargent,
    Wright,
} PersonnelNames;

@interface Personnel : NSObject

@property (nonatomic, strong) NSString * personnelName;
@property (nonatomic, strong) NSString * personnelCurrentLocation;
@property (nonatomic, strong) NSString * personnelPreviousLocation;
@property (nonatomic, strong) NSString * personnelCellNumber;
@property (nonatomic, strong) NSString * personnelAboutMe;
@property (nonatomic, assign) PersonnelNames personnelNames;
@property CGFloat personnelLatitude;
@property CGFloat personnelLongitude;

+(Personnel *)newPersonnelWithName:(NSString *)personnelName currentLocation:(NSString *)personnelCurrentLocation previousLocation:(NSString *)personnelPreviousLocation cellNumber:(NSString *)personnelCellNumber aboutMe:(NSString *)personnelAboutMe lastName:(PersonnelNames)personnelNames latitude:(CGFloat)personnelLatitude longitude:(CGFloat)personnelLongitude;

-(UIImage *)personnelImage;

@end
