//
//  PollCell.h
//  Tamarin
//
//  Created by Wyllian Hossein on 5/28/14.
//  Copyright (c) 2014 Nappix Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PollCell : UITableViewCell <UIActionSheetDelegate>
{
    
}

@property (weak, nonatomic) IBOutlet UIView *mainView;
@property (weak, nonatomic) IBOutlet UIImageView *imgA;
@property (weak, nonatomic) IBOutlet UIImageView *imgB;
@property (weak, nonatomic) IBOutlet UIImageView *imgProfile;
@property (weak, nonatomic) IBOutlet UILabel *lblQuestion;
@property (weak, nonatomic) IBOutlet UIButton *btnMore;

@property (weak, nonatomic) IBOutlet UIView *infoView;
@property (weak, nonatomic) IBOutlet UILabel *lblOptionA;
@property (weak, nonatomic) IBOutlet UILabel *lblOptionB;
@property (weak, nonatomic) IBOutlet UILabel *lblOptionACount;
@property (weak, nonatomic) IBOutlet UILabel *lblOptionBCount;
@property (weak, nonatomic) IBOutlet UILabel *lblFavoriteCount;
@property (weak, nonatomic) IBOutlet UITextField *txtQuickComment;

- (IBAction)btnClickMore:(id)sender;

@end
