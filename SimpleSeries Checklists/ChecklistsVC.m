//
//  ChecklistsVC.m
//  SimpleSeries Checklists
//
//  Created by Keith Choi on 2014-12-05.
//  Copyright (c) 2014 keithchoi. All rights reserved.
//

#import "ChecklistsVC.h"
#import "ChecklistItem.h"

@interface ChecklistsVC ()



@end



@implementation ChecklistsVC
{
    NSMutableArray *_items;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    _items = [[NSMutableArray alloc] initWithCapacity:20];
    ChecklistItem *item;
    
    item = [[ChecklistItem alloc] init];
    item.text = @"Walk the dog";
    item.checked = NO;
    [_items addObject:item];
    
    item = [[ChecklistItem alloc] init];
    item.text = @"Brush teeth";
    item.checked = NO;
    [_items addObject:item];
    
    item = [[ChecklistItem alloc] init];
    item.text = @"Learn iOS development";
    item.checked = NO;
    [_items addObject:item];
    
    item = [[ChecklistItem alloc] init];
    item.text = @"Soccer practice";
    item.checked = NO;
    [_items addObject:item];
    
    item = [[ChecklistItem alloc] init];
    item.text = @"Feed Smarty Suki";
    item.checked = NO;
    [_items addObject:item];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}



- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return [_items count];
}



- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView
                dequeueReusableCellWithIdentifier:@"ChecklistItem"];
    UILabel *label = (UILabel *)[cell viewWithTag:1000];
    ChecklistItem *item = _items[indexPath.row];
    label.text = item.text;
    
    [self configureTextForCell:cell withChecklistItem:item];
    [self configureCheckmarkForCell:cell withChecklistItem:item];
    
    return cell;
}



- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    ChecklistItem *item = _items[indexPath.row];
    [item toggleChecked];
    
    [self configureCheckmarkForCell:cell withChecklistItem:item];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}



- (void)configureCheckmarkForCell:(UITableViewCell *)cell
                withChecklistItem:(ChecklistItem *)item
{
    if (item.checked) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
}



- (void)configureTextForCell:(UITableViewCell *)cell
           withChecklistItem:(ChecklistItem *)item
{
    UILabel *label = (UILabel *)[cell viewWithTag:1000];
    label.text = item.text;
}

@end
