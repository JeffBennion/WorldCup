//
//  NetworkController.h
//  WorldCup
//
//  Created by Ryan Allred on 6/21/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>

@interface NetworkController : NSObject

+ (NSDictionary *)parametersWithAPIKey:(NSDictionary *)parameters;

+ (AFHTTPSessionManager *)api;

@end
