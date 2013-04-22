//
//  LeftViewController.m
//  Net Zero Live
//
//  Created by Justin and Emma on 4/20/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "LeftViewController.h"
#import "Equipment.h"

@interface LeftViewController ()

@end

@implementation LeftViewController

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if(self = [super initWithCoder:aDecoder])
    {
        //Initialize List of Solutions
        _solutions = [NSMutableArray array];
        
        [_solutions addObject:[Equipment newEquipmentWithName:@"Sun Dial" location:@"Nouakchott, Mauritania" quantity:@"2" advisor:@"Mike Sargent" solution:Sundial latitude:18.0783 longitude:-15.9744]];
        [_solutions addObject:[Equipment newEquipmentWithName:@"Flexfuel" location:@"Dakar, Senegal" quantity:@"4" advisor:@"Mike Sargent" solution:Flexfuel latitude:14.6962 longitude:-17.4442]];
        [_solutions addObject:[Equipment newEquipmentWithName:@"T-Series" location:@"Niamey, Niger" quantity:@"6" advisor:@"Mike Sargent" solution:TSeries latitude:13.5086 longitude:2.1111]];
        [_solutions addObject:[Equipment newEquipmentWithName:@"H-Series" location:@"Bagram, Afghanistan" quantity:@"10" advisor:@"Joe Amadee" solution:HSeries latitude:34.9462 longitude:69.2650]];
        [_solutions addObject:[Equipment newEquipmentWithName:@"Sun Dial" location:@"Bagram, Afghanistan" quantity:@"7" advisor:@"Joe Amadee" solution:Sundial latitude:34.9462 longitude:69.2650]];
        [_solutions addObject:[Equipment newEquipmentWithName:@"Solar Stik" location:@"Kandahar, Afghanistan" quantity:@"6" advisor:@"Joe Amadee" solution:SolarStik latitude:31.6078 longitude:65.7053]];
        [_solutions addObject:[Equipment newEquipmentWithName:@"Net Zero Combat Outpost" location:@"Nouakchott, Mauritania" quantity:@"1" advisor:@"Mike Sargent" solution:NetZeroCOP latitude:18.0783 longitude:-15.9744]];
        [_solutions addObject:[Equipment newEquipmentWithName:@"Net Zero Lite Camp" location:@"Niamey, Niger" quantity:@"2" advisor:@"Mike Sargent" solution:LiteCamp latitude:13.5086 longitude:2.1111]];
        [_solutions addObject:[Equipment newEquipmentWithName:@"Flexfuel" location:@"Zamboanga City, Phillippines" quantity:@"3" advisor:@"Jed Deplitch" solution:Flexfuel latitude:6.8667 longitude:122.0667]];
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationController.navigationBar setTintColor:[UIColor colorWithRed:22.0/255.0 green:25.0/255.0 blue:35.0/255.0 alpha:1]];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_solutions count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    // Configure the cell...
    
    Equipment * equipment = _solutions[indexPath.row];
    cell.backgroundView.backgroundColor = [UIColor colorWithRed:184.0/255.0 green:184.0/255.0 blue:184.0/255.0 alpha:1];
    cell.textLabel.text = equipment.equipmentName;
    cell.textLabel.font = [UIFont fontWithName:@"GeometricSlab712BT-BoldA" size:20];
    cell.textLabel.textColor = [UIColor colorWithRed:22.0/255.0 green:25.0/255.0 blue:35.0/255.0 alpha:1];
    cell.detailTextLabel.text = equipment.equipmentLocation;
    cell.detailTextLabel.font = [UIFont fontWithName:@"Georgia" size:14];
    cell.detailTextLabel.textColor = [UIColor colorWithRed:125.0/255.0 green:123.0/255.0 blue:100.0/255.0 alpha:1];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Equipment * selectedEquipment = [_solutions objectAtIndex:indexPath.row];
    if (_delegate)
    {
        [_delegate selectedEquipment:selectedEquipment];
    }
}

@end
