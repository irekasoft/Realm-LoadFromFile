//
//  RealmTestClass0.h
//  RealmLoadFile
//
//  Created by Hijazi on 17/3/16.
//  Copyright © 2016 iReka Soft. All rights reserved.
//

#import <Realm/Realm.h>

@interface RealmTestClass0 : RLMObject

@property NSString *stringValue;
@property NSInteger integerValue;
@property NSData *dataValue;

@end

// This protocol enables typed collections. i.e.:
// RLMArray<RealmTestClass0>
RLM_ARRAY_TYPE(RealmTestClass0)
