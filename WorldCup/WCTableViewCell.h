//
//  WCTableViewCell.h
//  WorldCup
//
//  Created by Jeff Bennion on 6/28/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WCTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *homeTeam;
@property (strong, nonatomic) IBOutlet UILabel *visitingTeam;
@property (strong, nonatomic) IBOutlet UILabel *gameStatus;
@property (strong, nonatomic) IBOutlet UILabel *homeScore;
@property (strong, nonatomic) IBOutlet UILabel *visitingScore;
@property (strong, nonatomic) IBOutlet UIImageView *homeFlag;
@property (strong, nonatomic) IBOutlet UIImageView *visitingFlag;
@property (strong, nonatomic) IBOutlet UIButton *like;
@property (strong, nonatomic) IBOutlet UILabel *likeCount;
@property (strong, nonatomic) IBOutlet UIButton *dislike;
@property (strong, nonatomic) IBOutlet UILabel *dislikeCount;

@end
