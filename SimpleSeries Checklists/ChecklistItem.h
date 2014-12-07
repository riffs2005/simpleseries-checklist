//
//  CheckListItems.h
//  SimpleSeries Checklists
//
//  Created by Keith Choi on 2014-12-06.
//  Copyright (c) 2014 keithchoi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChecklistItem : NSObject



@property (nonatomic, copy) NSString *text;
@property (nonatomic, assign) BOOL checked;



- (void)toggleChecked;



@end
