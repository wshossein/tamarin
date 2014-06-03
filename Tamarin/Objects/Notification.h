//
//  Notification.h
//  Tamarin
//
//  Created by Wyllian Hossein on 5/31/14.
//  Copyright (c) 2014 Nappix Apps. All rights reserved.
//

#import <Foundation/Foundation.h>
@class User, Poll;
@interface Notification : NSObject

@property (nonatomic) NSString* text;
@property (nonatomic) User* userCreator;
@property (nonatomic) Poll* poll;
@property (nonatomic) NSInteger date;
@property (nonatomic) NSInteger tag;

@end
