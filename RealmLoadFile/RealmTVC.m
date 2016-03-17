//
//  RealmTVC.m
//  RealmLoadFile
//
//  Created by Hijazi on 17/3/16.
//  Copyright © 2016 iReka Soft. All rights reserved.
//

#import "RealmTVC.h"

@interface RealmTVC ()

@end

@implementation RealmTVC

- (void)viewDidLoad {
  [super viewDidLoad];
  
  self.title = @"Realm from File";
  
  // realm
  RLMRealmConfiguration *config = [RLMRealmConfiguration defaultConfiguration];
  
  // Get the path to the bundled file
  config.path = [[NSBundle mainBundle] pathForResource:@"Test" ofType:@"realm"];
  // Open the file in read-only mode as application bundles are not writeable
  config.readOnly = YES;
  
  // Open the Realm with the configuration
  RLMRealm *realm = [RLMRealm realmWithConfiguration:config error:nil];
  
  // Read some data from the bundled Realm
  result = [RealmTestClass0 allObjectsInRealm:realm];
  
  // or use predicate
//  result = [RealmTestClass0 objectsInRealm:realm where:@""];
  
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  
  return result.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return result.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
  
  RealmTestClass0 *class = result[indexPath.row];
  cell.textLabel.text = class.stringValue;
  cell.detailTextLabel.text = [NSString stringWithFormat:@"%ld",class.integerValue];
  
  
  return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
  
  DetailVC *detail = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailVC"];
  detail.realmTestClass0 = result[indexPath.row];
  [self.navigationController pushViewController:detail animated:true];
  
  
}



@end
