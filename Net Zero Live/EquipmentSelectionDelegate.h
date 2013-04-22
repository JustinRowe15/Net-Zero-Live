//
//  EquipmentSelectionDelegate.h
//  Net Zero Live
//
//  Created by Justin and Emma on 4/21/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Equipment;

@protocol EquipmentSelectionDelegate <NSObject>

@required
-(void)selectedEquipment:(Equipment *)newEquipment;

@end
