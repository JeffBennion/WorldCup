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


@interface WCTableViewController ()

@property (weak, nonatomic) IBOutlet UILabel *HT1;
@property (weak, nonatomic) IBOutlet UILabel *VT1;
@property (weak, nonatomic) IBOutlet UILabel *HT2;
@property (weak, nonatomic) IBOutlet UILabel *VT2;
@property (weak, nonatomic) IBOutlet UILabel *HT3;
@property (weak, nonatomic) IBOutlet UILabel *VT3;
@property (weak, nonatomic) IBOutlet UIImageView *HomeImage1;
@property (weak, nonatomic) IBOutlet UIImageView *VisitingImage1;
@property (weak, nonatomic) IBOutlet UIImageView *HomeImage2;
@property (weak, nonatomic) IBOutlet UIImageView *VisitingImage2;
@property (weak, nonatomic) IBOutlet UIImageView *HomeImage3;
@property (weak, nonatomic) IBOutlet UIImageView *VisitingImage3;
@property (weak, nonatomic) IBOutlet UILabel *Status1;
@property (weak, nonatomic) IBOutlet UILabel *Status2;
@property (weak, nonatomic) IBOutlet UILabel *Status3;
@property (weak, nonatomic) IBOutlet UILabel *HomeScore1;
@property (weak, nonatomic) IBOutlet UILabel *VisitingScore1;
@property (weak, nonatomic) IBOutlet UILabel *HomeScore2;
@property (weak, nonatomic) IBOutlet UILabel *VisitingScore2;
@property (weak, nonatomic) IBOutlet UILabel *HomeScore3;
@property (weak, nonatomic) IBOutlet UILabel *VisitingScore3;

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

- (void)viewDidLoad
{
    [super viewDidLoad];
 
    [[ScoreController sharedInstance] getInfoCompletion:^(BOOL success) {
        if (success) {
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

//#pragma mark - Table view data source
//
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//#warning Potentially incomplete method implementation.
//    // Return the number of sections.
//    return 0;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//#warning Incomplete method implementation.
//    // Return the number of rows in the section.
//    return 0;
//}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

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
