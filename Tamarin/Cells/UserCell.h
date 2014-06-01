//
//  UserCell.h
//  Tamarin
//
//  Created by Wyllian Hossein on 6/1/14.
//  Copyright (c) 2014 Nappix Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserCell : UITableViewCell
{
    
}

@property (weak, nonatomic) IBOutlet UILabel *lblUsername;
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblLocation;
@property (weak, nonatomic) IBOutlet UIButton *btnFollow;
@property (weak, nonatomic) IBOutlet UIImageView *imgProfile;

- (IBAction)btnClickFollow:(id)sender;
@end
