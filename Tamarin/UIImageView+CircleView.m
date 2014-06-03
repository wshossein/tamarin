//
//  UIImageView+CircleView.m
//  Tamarin
//
//  Created by Wyllian Hossein on 6/2/14.
//  Copyright (c) 2014 Nappix Apps. All rights reserved.
//

#import "UIImageView+CircleView.h"

@implementation UIImageView (CircleView)

-(void)setCircleLayerWithBorder:(UIColor *)color
{
    self.layer.cornerRadius = self.frame.size.height /2;
    self.layer.masksToBounds = YES;
    self.layer.borderWidth = 0;
    self.layer.borderColor = [color CGColor];
    self.layer.borderWidth = 3.0f;
}
@end
