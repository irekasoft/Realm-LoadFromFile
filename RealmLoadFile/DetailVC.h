//
//  DetailVC.h
//  RealmLoadFile
//
//  Created by Hijazi on 17/3/16.
//  Copyright © 2016 iReka Soft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RealmTestClass0.h"

@interface DetailVC : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lbl_1;
@property (weak, nonatomic) IBOutlet UILabel *lbl_2;

@property RealmTestClass0 *realmTestClass0;

@end
