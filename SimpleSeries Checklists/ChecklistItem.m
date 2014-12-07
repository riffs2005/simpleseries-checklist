//
//  CheckListItems.m
//  SimpleSeries Checklists
//
//  Created by Keith Choi on 2014-12-06.
//  Copyright (c) 2014 keithchoi. All rights reserved.
//

#import "ChecklistItem.h"

@implementation ChecklistItem

- (void)toggleChecked
{
    self.checked = !self.checked;
}

@end
