//
//  ScoreController.h
//  WorldCup
//
//  Created by Ryan Allred on 6/21/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreController : NSObject


+ (ScoreController *)sharedInstance;

- (void)getInfoCompletion:(void (^)(BOOL success))completion;

@property (nonatomic, strong) NSArray *resultScores;

@end
