//
//  WCTableViewCell.m
//  WorldCup
//
//  Created by Jeff Bennion on 6/28/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "WCTableViewCell.h"


@implementation WCTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)likeButton:(id)sender {
}

- (IBAction)dislikeButton:(id)sender {
}

@end
