//
//  Option.h
//  Tamarin
//
//  Created by Wyllian Hossein on 6/3/14.
//  Copyright (c) 2014 Nappix Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, ImageType) {
    LINK,
    IMAGE
};

@interface Option : NSObject

@property (nonatomic) UIImage* image;
@property (nonatomic) NSString* text;
@property (nonatomic) NSURL* imageURL;
@property (nonatomic) ImageType imageType;
@property (nonatomic) NSInteger tag;
@property (nonatomic) NSInteger date;
@property (nonatomic) NSMutableArray* votes;

@end
