//
//  Equipment.m
//  Net Zero Live
//
//  Created by Justin and Emma on 4/20/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "Equipment.h"

@implementation Equipment

+(Equipment *)newEquipmentWithName:(NSString *)equipmentName location:(NSString *)equipmentLocation quantity:(NSString *)equipmentQuantity advisor:(NSString *)equipmentAdvisor solution:(Solution)solution latitude:(CGFloat)equipmentLatitude longitude:(CGFloat)equipmentLongitude;
{
    Equipment * equipment = [[Equipment alloc] init];
    equipment.equipmentName = equipmentName;
    equipment.equipmentLocation = equipmentLocation;
    equipment.equipmentQuantity = equipmentQuantity;
    equipment.equipmentAdvisor = equipmentAdvisor;
    equipment.solution = solution;
    equipment.equipmentLatitude = equipmentLatitude;
    equipment.equipmentLongitude = equipmentLongitude;
    
    return equipment;
}

@end
