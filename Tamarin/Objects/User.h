//
//  User.h
//  Tamarin
//
//  Created by Wyllian Hossein on 5/31/14.
//  Copyright (c) 2014 Nappix Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CLLocation;

typedef NS_ENUM(NSInteger, NSSex) {
    MALE,
    FEMALE,
    CHILD
};


@interface User : NSObject

@property (nonatomic) UIImage* imageProfile;
@property (nonatomic) UIImage* imageCover;
@property (nonatomic) NSString* bio;
@property (nonatomic) NSString* displayName;
@property (nonatomic) NSString* username;
@property (nonatomic) NSString * password; //MD5
@property (nonatomic) NSString* email;
@property (nonatomic) NSString* userID;
@property (nonatomic) CLLocation* location;
@property (nonatomic) NSSex gender;
@property (nonatomic) NSInteger tag;
@property (nonatomic) NSInteger dateBirthday;
@property (nonatomic) NSInteger dateCreation;
@property (nonatomic) NSMutableArray* votes;
@property (nonatomic) NSMutableArray* polls;
@property (nonatomic) NSMutableArray* comments;
@property (nonatomic) NSMutableArray* following;
@property (nonatomic) NSMutableArray* followers;



@end
