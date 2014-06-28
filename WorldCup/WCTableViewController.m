//
//  WCTableViewController.m
//  WorldCup
//
//  Created by Ryan Allred on 6/21/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "WCTableViewController.h"
#import "NetworkController.h"
#import "ScoreController.h"
#import <AFNetworking/UIImageView+AFNetworking.h>
#import "WCTableViewCell.h"

static NSString *identifier = @"identifier";

@interface WCTableViewController ()

//@property (weak, nonatomic) IBOutlet UILabel *HT1;
//@property (weak, nonatomic) IBOutlet UILabel *VT1;
//@property (weak, nonatomic) IBOutlet UILabel *HT2;
//@property (weak, nonatomic) IBOutlet UILabel *VT2;
//@property (weak, nonatomic) IBOutlet UILabel *HT3;
//@property (weak, nonatomic) IBOutlet UILabel *VT3;
//@property (weak, nonatomic) IBOutlet UIImageView *HomeImage1;
//@property (weak, nonatomic) IBOutlet UIImageView *VisitingImage1;
//@property (weak, nonatomic) IBOutlet UIImageView *HomeImage2;
//@property (weak, nonatomic) IBOutlet UIImageView *VisitingImage2;
//@property (weak, nonatomic) IBOutlet UIImageView *HomeImage3;
//@property (weak, nonatomic) IBOutlet UIImageView *VisitingImage3;
//@property (weak, nonatomic) IBOutlet UILabel *Status1;
//@property (weak, nonatomic) IBOutlet UILabel *Status2;
//@property (weak, nonatomic) IBOutlet UILabel *Status3;
//@property (weak, nonatomic) IBOutlet UILabel *HomeScore1;
//@property (weak, nonatomic) IBOutlet UILabel *VisitingScore1;
//@property (weak, nonatomic) IBOutlet UILabel *HomeScore2;
//@property (weak, nonatomic) IBOutlet UILabel *VisitingScore2;
//@property (weak, nonatomic) IBOutlet UILabel *HomeScore3;
//@property (weak, nonatomic) IBOutlet UILabel *VisitingScore3;


@end

@implementation WCTableViewController

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (NSURL *)urlForFlag:(NSString*)countryCode{
    
    NSString *flagAddress = [NSString stringWithFormat:@"http://img.fifa.com/imgml/flags/l/%@.gif", countryCode];
    NSURL *flagURL = [NSURL URLWithString:flagAddress];
    return flagURL;
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
 
    [self getData];
    
    UIRefreshControl *refreshControl = [[UIRefreshControl alloc] init];
    [refreshControl addTarget:self action:@selector(updateTable) forControlEvents:UIControlEventValueChanged];
    self.refreshControl = refreshControl;
    
    
}

- (void)updateTable
{
    
    [self.tableView reloadData];
    
    [self.refreshControl endRefreshing];
}

- (void)getData
{
    [[ScoreController sharedInstance] getInfoCompletion:^(BOOL success, NSArray *resultScore) {
        
        
        if (success) {
            NSLog(@"success");
            self.dataArray = resultScore;
        
//            int length = [resultScore count];
//            
//            for (int i = 0; i < length; i++) {
//                
//                
//                self.HT1.text = [NSString stringWithFormat:@"%@", resultScore[i][@"home_team"][@"code"]];
//                self.HomeScore1.text = [NSString stringWithFormat:@"%@", resultScore[i][@"home_team"][@"goals"]];
//                [self.HomeImage1 setImageWithURL: [self urlForFlag:resultScore[i][@"home_team"][@"code"]]];
//                self.VT1.text = [NSString stringWithFormat:@"%@", resultScore[i][@"away_team"][@"code"]];
//                self.VisitingScore1.text = [NSString stringWithFormat:@"%@", resultScore[i][@"away_team"][@"goals"]];
//                self.Status1.text = [NSString stringWithFormat:@"%@", resultScore[i][@"status"]];
//                [self.VisitingImage1 setImageWithURL: [self urlForFlag:resultScore[i][@"away_team"][@"code"]]];
//            }
        
            //            self.HT1.text = [NSString stringWithFormat:@"%@", resultScore[0][@"home_team"][@"code"]];
            //            self.HomeScore1.text = [NSString stringWithFormat:@"%@", resultScore[0][@"home_team"][@"goals"]];
            //            [self.HomeImage1 setImageWithURL: [self urlForFlag:resultScore[0][@"home_team"][@"code"]]];
            //            self.VT1.text = [NSString stringWithFormat:@"%@", resultScore[0][@"away_team"][@"code"]];
            //            self.VisitingScore1.text = [NSString stringWithFormat:@"%@", resultScore[0][@"away_team"][@"goals"]];
            //            self.Status1.text = [NSString stringWithFormat:@"%@", resultScore[0][@"status"]];
            //            [self.VisitingImage1 setImageWithURL: [self urlForFlag:resultScore[0][@"away_team"][@"code"]]];
            
            //            self.HT2.text = [NSString stringWithFormat:@"%@", resultScore[1][@"home_team"][@"code"]];
            //            self.HomeScore2.text = [NSString stringWithFormat:@"%@", resultScore[1][@"home_team"][@"goals"]];
            //            [self.HomeImage2 setImageWithURL: [self urlForFlag:resultScore[1][@"home_team"][@"code"]]];
            //            self.VT2.text = [NSString stringWithFormat:@"%@", resultScore[1][@"away_team"][@"code"]];
            //            self.VisitingScore2.text = [NSString stringWithFormat:@"%@", resultScore[1][@"away_team"][@"goals"]];
            //            self.Status2.text = [NSString stringWithFormat:@"%@", resultScore[1][@"status"]];
            //            [self.VisitingImage2 setImageWithURL: [self urlForFlag:resultScore[1][@"away_team"][@"code"]]];
            
            //            self.HT3.text = [NSString stringWithFormat:@"%@", resultScore[2][@"home_team"][@"code"]];
            //            self.HomeScore3.text = [NSString stringWithFormat:@"%@", resultScore[2][@"home_team"][@"goals"]];
            //            [self.HomeImage3 setImageWithURL: [self urlForFlag:resultScore[2][@"home_team"][@"code"]]];
            //            self.VT3.text = [NSString stringWithFormat:@"%@", resultScore[2][@"away_team"][@"code"]];
            //            self.VisitingScore3.text = [NSString stringWithFormat:@"%@", resultScore[2][@"away_team"][@"goals"]];
            //            self.Status3.text = [NSString stringWithFormat:@"%@", resultScore[2][@"status"]];
            //            [self.VisitingImage3 setImageWithURL: [self urlForFlag:resultScore[2][@"away_team"][@"code"]]];
            
 [self.tableView reloadData];
        
        } else {
            [[[UIAlertView alloc] initWithTitle:@"Failed to search" message:@"The request failed" delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil] show];
        }
    }];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.dataArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    WCTableViewCell *realCell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    // Configure the cell...
    realCell.homeTeam.text = [NSString stringWithFormat:@"%@", self.dataArray[indexPath.row][@"home_team"][@"code"]];
    realCell.homeScore.text = [NSString stringWithFormat:@"%@", self.dataArray[indexPath.row][@"home_team"][@"goals"]];
    [realCell.homeFlag setImageWithURL: [self urlForFlag:self.dataArray[indexPath.row][@"home_team"][@"code"]]];
    realCell.visitingTeam.text = [NSString stringWithFormat:@"%@", self.dataArray[indexPath.row][@"away_team"][@"code"]];
    realCell.visitingScore.text = [NSString stringWithFormat:@"%@", self.dataArray[indexPath.row][@"away_team"][@"goals"]];
    realCell.gameStatus.text = [NSString stringWithFormat:@"%@", self.dataArray[indexPath.row][@"status"]];
    [realCell.visitingFlag setImageWithURL: [self urlForFlag:self.dataArray[indexPath.row][@"away_team"][@"code"]]];
    
    return realCell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
