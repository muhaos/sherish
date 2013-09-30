//
//  SHLeftMenuVC.m
//  Sherish
//
//  Created by Vova Musiienko on 30.09.13.
//  Copyright (c) 2013 swanteams.com. All rights reserved.
//

#import "SHLeftMenuVC.h"
#import "SHLeftMenuCell.h"

@interface SHLeftMenuVC () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray* menuItems;

@end

@implementation SHLeftMenuVC


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.menuItems = [@[
                      @{@"title":@"Queue", @"count":@1109},
                      @{@"title":@"Lockers", @"count":@31},
                      @{@"title":@"People", @"count":@42},
                      @{@"title":@"Private Networks", @"count":@2},
                      @{@"title":@"Events", @"count":@19},
                      @{@"title":@"Locations", @"count":@183},
                      @{@"title":@"Timeline", @"count":@5293},
                      @{@"title":@"Preferences", @"count":@-1},
                      @{@"title":@"Billing", @"count":@-1},
                      @{@"title":@"Integrations", @"count":@-1}] mutableCopy];
}


- (NSString*) formattedNumber:(NSNumber*)n {
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
    return [numberFormatter stringFromNumber:n];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.menuItems.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SHLeftMenuCell* cell = (SHLeftMenuCell*)[tableView dequeueReusableCellWithIdentifier:@"left_menu_cell"];
    
    cell.titleLabel.text = self.menuItems[indexPath.row][@"title"];
    
    NSNumber* itemsCount = self.menuItems[indexPath.row][@"count"];
    if ([itemsCount intValue] >= 0) {
        cell.itemsCountLabel.text = [self formattedNumber:itemsCount];
    } else {
        cell.itemsCountLabel.text = @"";
    }
    
    
    return cell;
}


- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    return indexPath;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
