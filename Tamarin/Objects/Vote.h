//
//  Vote.h
//  Tamarin
//
//  Created by Wyllian Hossein on 6/3/14.
//  Copyright (c) 2014 Nappix Apps. All rights reserved.
//

#import <Foundation/Foundation.h>
@class User;

typedef NS_ENUM(NSInteger, VoteType) {
    FAVORITE,
    ANSWER
};

@interface Vote : NSObject

@property (nonatomic) User* user;
@property (nonatomic) NSInteger option;//NSInteger to support sliders
@property (nonatomic) NSInteger date;
@property (nonatomic) NSInteger tag;
@property (nonatomic) VoteType type;

@end
