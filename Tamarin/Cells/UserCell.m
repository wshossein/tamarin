//
//  UserCell.m
//  Tamarin
//
//  Created by Wyllian Hossein on 6/1/14.
//  Copyright (c) 2014 Nappix Apps. All rights reserved.
//

#import "UserCell.h"

@implementation UserCell
@synthesize btnFollow;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)btnClickFollow:(id)sender
{
    if([btnFollow.titleLabel.text isEqualToString:@"Follow"])
    {
        [btnFollow setTitle:@"Unfollow" forState:UIControlStateNormal];
    }
    else
    {
        [btnFollow setTitle:@"Follow" forState:UIControlStateNormal];
    }
}
@end
