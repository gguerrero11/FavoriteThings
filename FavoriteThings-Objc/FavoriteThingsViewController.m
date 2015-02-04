//
//  FavoriteThingsViewController.m
//  FavoriteThings-Objc
//
//  Created by Gabriel Guerrero on 2/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "FavoriteThingsViewController.h"

@interface FavoriteThingsViewController () <UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation FavoriteThingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView = [UITableView new];
    self.tableView.frame = self.view.bounds;
    self.tableView.dataSource = self;
    
    [self.view addSubview:self.tableView]; // It's "self.tableView" because the variable "*tableView" is not within the scope; its a global one.
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self favoriteThings].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = [self favoriteThings][indexPath.row];
    return cell;
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (NSArray *)favoriteThings {
    return @[@"Breakfast", @"Food", @"DevMountain", @"My Instructor", @"Not Semicolons"];
}


@end
