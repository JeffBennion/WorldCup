//
//  ScoreController.m
//  WorldCup
//
//  Created by Ryan Allred on 6/21/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "ScoreController.h"
#import "NetworkController.h"

@implementation ScoreController

+ (ScoreController *)sharedInstance {
    
    static ScoreController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [ScoreController new];
    });
    return sharedInstance;
    
}

- (void)getInfoCompletion:(void (^)(BOOL success))completion {
    [[NetworkController api] GET:@"matches/today"
                      parameters:nil
                         success:^(NSURLSessionDataTask *task, id responseObject) {
                             self.resultScores = responseObject[@"results"];
                             completion(YES);
                         }
                         failure:^(NSURLSessionDataTask *task, NSError *error) {
                             completion(NO);
                         }];
    NSLog(@"%@", self.resultScores[0]);
}

@end
