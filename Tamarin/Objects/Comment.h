//
//  Comment.h
//  Tamarin
//
//  Created by Wyllian Hossein on 5/31/14.
//  Copyright (c) 2014 Nappix Apps. All rights reserved.
//

#import <Foundation/Foundation.h>
@class User;

@interface Comment : NSObject

@property (nonatomic) User* user;
@property (nonatomic) NSString* text;
@property (nonatomic) NSArray* mentions;
@property (nonatomic) NSArray* hashtags;
@property (nonatomic) NSInteger date;
@property (nonatomic) NSInteger tag;

@end
