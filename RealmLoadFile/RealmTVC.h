//
//  RealmTVC.h
//  RealmLoadFile
//
//  Created by Hijazi on 17/3/16.
//  Copyright © 2016 iReka Soft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Realm/Realm.h>
#import "RealmTestClass0.h"
#import "DetailVC.h"

@interface RealmTVC : UITableViewController {
  
  RLMResults<RealmTestClass0 *> *result;
  
}

@end
