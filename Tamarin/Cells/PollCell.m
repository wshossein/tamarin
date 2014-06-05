//
//  PollCell.m
//  Tamarin
//
//  Created by Wyllian Hossein on 5/28/14.
//  Copyright (c) 2014 Nappix Apps. All rights reserved.
//

#import "PollCell.h"
#import "UIImageView+CircleView.h"

@implementation PollCell
@synthesize btnMore, imgProfile;

- (void)awakeFromNib
{
    [imgProfile setCircleLayerWithBorder:[UIColor greenColor]];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)btnClickMore:(id)sender
{
    UIActionSheet *popup = [[UIActionSheet alloc] initWithTitle:@"Select Sharing option:" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Report" otherButtonTitles:
                            @"Comments",
                            @"Share",
                            @"Up",
                            nil];
    [popup showInView:[UIApplication sharedApplication].keyWindow];
}

- (IBAction)swypeLeft:(id)sender
{
    NSLog(@"ESQUEERDA");
}

- (IBAction)swypeRight:(id)sender
{
    NSLog(@"direita");
}

- (IBAction)btnClickA:(id)sender
{
    NSLog(@"ESQUERDA");
}


- (IBAction)btnClickB:(id)sender
{
    NSLog(@"direita");

}

- (void)actionSheet:(UIActionSheet *)popup clickedButtonAtIndex:(NSInteger)buttonIndex
{
    UIAlertView *alert;
    switch (buttonIndex)
    {
        case 0:
            alert = [[UIAlertView alloc] initWithTitle:nil
                                               message:@"Report"
                                              delegate:nil
                                     cancelButtonTitle:@"OK"
                                     otherButtonTitles:nil];
            break;
        case 1:
            alert = [[UIAlertView alloc] initWithTitle:nil
                                               message:@"Comments"
                                              delegate:nil
                                     cancelButtonTitle:@"OK"
                                     otherButtonTitles:nil];
            break;
        case 2:
            alert = [[UIAlertView alloc] initWithTitle:nil
                                               message:@"Share"
                                              delegate:nil
                                     cancelButtonTitle:@"OK"
                                     otherButtonTitles:nil];
            break;
        case 3:
            alert = [[UIAlertView alloc] initWithTitle:nil
                                               message:@"Up"
                                              delegate:nil
                                     cancelButtonTitle:@"OK"
                                     otherButtonTitles:nil];
            break;
        default:
            alert = [[UIAlertView alloc] initWithTitle:nil
                                               message:@"NONE"
                                              delegate:nil
                                     cancelButtonTitle:@"OK"
                                     otherButtonTitles:nil];
            break;
    }
    [alert show];
}
@end
