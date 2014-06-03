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
#import "User.h"
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
    Poll* p1 = [Poll new]; p1.question = @"http://wiki.erepublik.com/images/7/70/-Chuck_Norris-_01.jpg";
    [polls addObject:p1];
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
    long row = [indexPath row];
    [cell.imgProfile setImageWithURL:[NSURL URLWithString:[[polls objectAtIndex:row] question]] placeholderImage:[UIImage imageNamed:@"second.jpg"]];

    return cell;
}

@end
