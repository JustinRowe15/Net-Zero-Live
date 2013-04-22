//
//  Personnel.m
//  Net Zero Live
//
//  Created by Justin and Emma on 4/21/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "Personnel.h"

@implementation Personnel

+(Personnel *)newPersonnelWithName:(NSString *)personnelName currentLocation:(NSString *)personnelCurrentLocation previousLocation:(NSString *)personnelPreviousLocation cellNumber:(NSString *)personnelCellNumber aboutMe:(NSString *)personnelAboutMe lastName:(PersonnelNames)personnelNames latitude:(CGFloat)personnelLatitude longitude:(CGFloat)personnelLongitude
{
    Personnel * personnel = [[Personnel alloc] init];
    personnel.personnelName = personnelName;
    personnel.personnelCurrentLocation = personnelCurrentLocation;
    personnel.personnelPreviousLocation = personnelPreviousLocation;
    personnel.personnelCellNumber = personnelCellNumber;
    personnel.personnelAboutMe = personnelAboutMe;
    personnel.personnelNames = personnelNames;
    personnel.personnelLatitude = personnelLatitude;
    personnel.personnelLongitude = personnelLongitude;
    
    return personnel;
}

-(UIImage *)personnelImage {
    
    switch (self.personnelNames) {
        case Amadee:
            return [UIImage imageNamed:@"Jed.png"];
            break;
        case Barniak:
            return [UIImage imageNamed:@"Jed.png"];
            break;
        case Bloodworth:
            return [UIImage imageNamed:@"Jed.png"];
            break;
        case Brygider:
            return [UIImage imageNamed:@"Jed.png"];
            break;
        case Deplitch:
            return [UIImage imageNamed:@"Jed.png"];
            break;
        case Fisher:
            return [UIImage imageNamed:@"Jed.png"];
            break;
        case Funderburk:
            return [UIImage imageNamed:@"Mike.png"];
            break;
        case Sargent:
            return [UIImage imageNamed:@"Jed.png"];
            break;
        case Wright:
            return [UIImage imageNamed:@"Jed.png"];
        default:
            //Anything not in the enum.
            return nil;
            break;
    }
}

@end
