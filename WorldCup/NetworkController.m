//
//  NetworkController.m
//  WorldCup
//
//  Created by Ryan Allred on 6/21/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "NetworkController.h"

@implementation NetworkController


+ (AFHTTPSessionManager *)api {
    static AFHTTPSessionManager *api = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        api = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:@"https://worldcup.sfg.io"]];
        api.responseSerializer = [AFJSONResponseSerializer serializer];
        //api.requestSerializer = [AFJSONRequestSerializer serializer];
    });
    return api;
}


+ (NSDictionary *)parametersWithAPIKey:(NSDictionary *)parameters {
    
    NSMutableDictionary *parametersWithKey = [[NSMutableDictionary alloc] initWithDictionary:parameters];
    //[parametersWithKey setObject:API_KEY forKey:@"api_key"];
    
    return parametersWithKey;
}

@end
