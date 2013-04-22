//
//  LeftPersonnelViewController.m
//  Net Zero Live
//
//  Created by Justin and Emma on 4/21/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "LeftPersonnelViewController.h"
#import "Personnel.h"

@interface LeftPersonnelViewController ()

@end

@implementation LeftPersonnelViewController

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder])
    {
        //initialize the array of people
        _people = [NSMutableArray array];
        
        //create the people objects then add them to the array list.
        [_people addObject:[Personnel newPersonnelWithName:@"Joe Amadee" currentLocation:@"Bagram, Afghanistan" previousLocation:@"Washington, D.C." cellNumber:@"703-555-1234" aboutMe:@"About Me entry will go here in this paragraph space." lastName:Amadee latitude:34.9462 longitude:69.2650]];
        
        [_people addObject:[Personnel newPersonnelWithName:@"Joe Barniak" currentLocation:@"Kandahar, Afghanistan" previousLocation:@"Bagram, Afghanistan" cellNumber:@"703-555-2345" aboutMe:@"About Me entry will go here in this paragraph space." lastName:Barniak latitude:31.6078 longitude:65.7053]];
        
        [_people addObject:[Personnel newPersonnelWithName:@"Brandon Bloodworth" currentLocation:@"Washington, D.C." previousLocation:@"Denver, Colorado" cellNumber:@"703-555-3456" aboutMe:@"About Me entry will go here in this paragraph space." lastName:Bloodworth latitude:38.8900 longitude:-77.0300]];
        
        [_people addObject:[Personnel newPersonnelWithName:@"Barbara Brygider" currentLocation:@"Washington, D.C" previousLocation:@"New York, New York" cellNumber:@"703-555-1234" aboutMe:@"About Me entry will go here in this paragraph space." lastName:Brygider latitude:38.8900 longitude:-77.0300]];
        
        [_people addObject:[Personnel newPersonnelWithName:@"Jed Deplitch" currentLocation:@"Las Vegas, Nevada" previousLocation:@"Denver, Colorado" cellNumber:@"703-555-2345" aboutMe:@"About Me entry will go here in this paragraph space." lastName:Deplitch latitude:36.0800 longitude:-115.1522]];
        
        [_people addObject:[Personnel newPersonnelWithName:@"Mike Fisher" currentLocation:@"Washington, D.C." previousLocation:@"Denver, Colorado" cellNumber:@"703-555-3456" aboutMe:@"About Me entry will go here in this paragraph space." lastName:Fisher latitude:38.8900 longitude:-77.0300]];
        
        [_people addObject:[Personnel newPersonnelWithName:@"Mike Funderburk" currentLocation:@"Washington, D.C" previousLocation:@"New York, New York" cellNumber:@"703-555-1234" aboutMe:@"About Me entry will go here in this paragraph space." lastName:Funderburk latitude:38.8900 longitude:-77.0300]];
        
        [_people addObject:[Personnel newPersonnelWithName:@"Mike Sargent" currentLocation:@"Las Vegas, Nevada" previousLocation:@"Denver, Colorado" cellNumber:@"703-555-2345" aboutMe:@"About Me entry will go here in this paragraph space." lastName:Sargent latitude:36.0800 longitude:-115.1522]];
        
        [_people addObject:[Personnel newPersonnelWithName:@"Lex Wright" currentLocation:@"Washington, D.C." previousLocation:@"Denver, Colorado" cellNumber:@"703-555-3456" aboutMe:@"About Me entry will go here in this paragraph space." lastName:Wright latitude:38.8900 longitude:-77.0300]];
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

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
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [_people count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    Personnel * personnel = _people[indexPath.row];
    cell.textLabel.text = personnel.personnelName;
    
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
    Personnel * selectedPersonnel = [_people objectAtIndex:indexPath.row];
    if (_delegate) {
        [_delegate selectedPersonnel:selectedPersonnel];
    }
}

@end
