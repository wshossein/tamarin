//
//  HomeVC.m
//  Tamarin
//
//  Created by Wyllian Hossein on 5/28/14.
//  Copyright (c) 2014 Nappix Apps. All rights reserved.
//

#import "HomeVC.h"
#import "PollCell.h"
#import "Poll.h"
#import "Option.h"
#import "User.h"
#import "Manager.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface HomeVC ()

@end

@implementation HomeVC

@synthesize tblTimeline, polls;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    tblTimeline.delegate = self;
    tblTimeline.dataSource = self;
    polls = [NSMutableArray array];
    Poll* p1 = [Poll new]; Option* pa = [Option new]; Option* pb = [Option new]; User* usuario = [User new]; usuario.userID = @"teste"; usuario.imageProfileURL = [NSURL URLWithString:@"https://scontent-a-gru.xx.fbcdn.net/hphotos-xpa1/t1.0-9/1560476_10203126028300553_411393050_n.jpg"];
    pa.imageURL = [NSURL URLWithString:@"http://fc09.deviantart.net/fs33/i/2008/305/2/9/Apple_Logo_csh_by_wiimon.png"]; pa.text = @"Apple"; pb.imageURL = [NSURL URLWithString:@"http://creditworksusa.com/wp-content/uploads/2014/04/google-g-logo.png"]; pb.text = @"Google";
    p1.options = @[pa,pb]; p1.user = usuario; p1.question = @"Qual a maior empresa?";
    [polls addObject:p1];
    Poll* p2 = [Poll new]; Option* p2a = [Option new]; Option* p2b = [Option new]; User* usuario2 = [User new]; usuario2.userID = @"teste"; usuario2.imageProfileURL = [NSURL URLWithString:@"https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/t1.0-1/c170.50.621.621/s160x160/936555_588461077855326_1150299604_n.jpg"];
    p2a.imageURL = [NSURL URLWithString:@"http://www3.sp.senac.br/hotsites/intercambios/wp-content/uploads/2012/05/bandeira-Alemanha.jpg"]; p2a.text = @"Alemanha"; p2b.imageURL = [NSURL URLWithString:@"http://sportv.globo.com/platb/files/980/2012/02/bandeira-brasil.jpg"]; p2b.text = @"Brasil";
    p2.options = @[p2a,p2b]; p2.user = usuario2; p2.question = @"Qual o melhor país para se morar?";
    [polls addObject:p2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [polls count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"pollcell";
    PollCell *cell = (PollCell*) [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"PollCell" owner:self options:nil];
        cell = (PollCell *)[nib objectAtIndex:0];
    }
    
    Poll* p = [polls objectAtIndex:[indexPath row]];
    
    if ([[p.user userID] isEqualToString:[[Manager instance].sessionUser userID]])
    {
        //poll from user (stored yet)
    }
    else //poll from internet
    {
        Option* a = [[p options] objectAtIndex:0];
        Option* b = [[p options] objectAtIndex:1];
        
        [cell.imgProfile setImageWithURL:[[p user] imageProfileURL] placeholderImage:[UIImage imageNamed:@"second.jpg"]];
        
        [cell.imgA setImageWithURL:[a imageURL] placeholderImage:[UIImage imageNamed:@"second.jpg"]];
        cell.lblOptionA.text = [a text];
        cell.lblOptionACount.text = [NSString stringWithFormat:@"%d", [[a votes] count]];
        
        [cell.imgB setImageWithURL:[b imageURL] placeholderImage:[UIImage imageNamed:@"second.jpg"]];
        cell.lblOptionB.text = [b text];
        cell.lblOptionBCount.text = [NSString stringWithFormat:@"%d", [[b votes] count]];
        
        cell.lblFavoriteCount.text = [NSString stringWithFormat:@"%d", [[p favorites] count]];

        cell.lblQuestion.text = [p question];
    }
    

    return cell;
}

@end
