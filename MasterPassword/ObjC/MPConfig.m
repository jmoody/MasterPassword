//
//  MPConfig.m
//  MasterPassword
//
//  Created by Maarten Billemont on 02/01/12.
//  Copyright (c) 2012 Lyndir. All rights reserved.
//

#import "MPConfig.h"
#import "MPAppDelegate_Shared.h"

@implementation MPConfig

@dynamic sendInfo, rememberLogin, iCloudDecided;

- (id)init {

    if (!(self = [super init]))
        return nil;

    [self.defaults registerDefaults:@{
            NSStringFromSelector( @selector(askForReviews) ) : @YES,

            NSStringFromSelector( @selector(sendInfo) )      : @NO,
            NSStringFromSelector( @selector(rememberLogin) ) : @NO,
            NSStringFromSelector( @selector(iCloudDecided) ) : @NO
    }];

    self.delegate = [MPAppDelegate_Shared get];

    return self;
}

@end
