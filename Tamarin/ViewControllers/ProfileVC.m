//
//  ProfileVC.m
//  Tamarin
//
//  Created by Wyllian Hossein on 5/28/14.
//  Copyright (c) 2014 Nappix Apps. All rights reserved.
//

#import "ProfileVC.h"
#import "PollCell.h"
#import "UserCell.h"

@interface ProfileVC ()

@end

@implementation ProfileVC
@synthesize scrollView, tblPeople, tblPolls, btnFollow;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    scrollView.contentSize=CGSizeMake(320,960);
    tblPolls.delegate = self; tblPolls.dataSource = self;
    tblPeople.delegate = self; tblPeople.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View Delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    long row = [indexPath row];
    
    if (tableView == tblPeople)
    {
        static NSString *CellIdentifier = @"usercell";
        UserCell *cell = (UserCell*) [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
        return cell;
    }
    else if (tableView == tblPolls)
    {
        static NSString *CellIdentifier = @"pollcell";
        PollCell *cell = (PollCell*) [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
        
        return cell;
    }
    return nil; //never reached only to prevent warnings
}
- (BOOL)touchesShouldCancelInContentView:(UIView *)view
{
    return ![view isKindOfClass:[UIButton class]];
}
#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

#pragma mark - Button Clicks

- (IBAction)btnClickEdit:(id)sender
{
    
}

- (IBAction)btnClickPollsAsk:(id)sender
{
    tblPolls.hidden = NO;
}

- (IBAction)btnClickPollsAns:(id)sender
{
    tblPolls.hidden = NO;
}

- (IBAction)btnClickConnections:(id)sender
{
    tblPolls.hidden = YES;
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
