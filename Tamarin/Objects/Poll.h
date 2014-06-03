//
//  Poll.h
//  Tamarin
//
//  Created by Wyllian Hossein on 5/31/14.
//  Copyright (c) 2014 Nappix Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CLLocation;
@class NPXCategory, User;

@interface Poll : NSObject

@property (nonatomic) NSString* question;
@property (nonatomic) NSInteger credits;
@property (nonatomic) NSArray* hashtags;
@property (nonatomic) NSArray* mentions;
@property (nonatomic) NPXCategory* category;
@property (nonatomic) CLLocation* location;
@property (nonatomic) NSString* pollID;
@property (nonatomic) NSInteger dateCreation;
@property (nonatomic) NSInteger tag;
@property (nonatomic) NSMutableArray* favorites;
@property (nonatomic) NSArray* options;
@property (nonatomic) NSMutableArray* comments;
@property (nonatomic) User* user;

@end
