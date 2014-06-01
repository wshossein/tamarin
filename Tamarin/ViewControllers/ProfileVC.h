//
//  ProfileVC.h
//  Tamarin
//
//  Created by Wyllian Hossein on 5/28/14.
//  Copyright (c) 2014 Nappix Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfileVC : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    
}

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *imgCover;
@property (weak, nonatomic) IBOutlet UIImageView *imgProfile;
@property (weak, nonatomic) IBOutlet UITextView *txtBio;
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblLocation;
@property (weak, nonatomic) IBOutlet UILabel *lblUsername;
@property (weak, nonatomic) IBOutlet UIButton *btnEdit;
@property (weak, nonatomic) IBOutlet UITableView *tblPolls;
@property (weak, nonatomic) IBOutlet UIButton *btnPollsAsk;
@property (weak, nonatomic) IBOutlet UIButton *btnPollsAns;
@property (weak, nonatomic) IBOutlet UIButton *btnConnections;
@property (weak, nonatomic) IBOutlet UITableView *tblPeople;
@property (weak, nonatomic) IBOutlet UIButton *btnFollow;


- (IBAction)btnClickEdit:(id)sender;
- (IBAction)btnClickPollsAsk:(id)sender;
- (IBAction)btnClickPollsAns:(id)sender;
- (IBAction)btnClickConnections:(id)sender;
- (IBAction)btnClickFollow:(id)sender;

@end
