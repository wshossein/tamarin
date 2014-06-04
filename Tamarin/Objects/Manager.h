//
//  Manager.h
//  Tamarin
//
//  Created by Wyllian Hossein on 6/4/14.
//  Copyright (c) 2014 Nappix Apps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface Manager : NSObject

@property(nonatomic) User* sessionUser;

+(void) showMsg;
+(void) closeMsg;
+ (void) showWarning: (NSString*) msg;
-(void) copyDBIfNeeded;
+ (Manager*)instance;

@end
