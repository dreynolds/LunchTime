//
//  TPI_LunchTime.m
//  LunchTime
//
//  Created by David Reynolds on 30/03/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TPI_LunchTime.h"


@implementation TPI_LunchTime
- (void)messageSentByUser:(IRCClient *)client
                  message:(NSString *)messageString
                  command:(NSString *)commandString
{
    if ([[[client world] selectedChannel] isChannel] == NO) {
        [[client invokeOnMainThread] sendCommand:@"echo You are not on a channel."];
        return;
    }
    if ([commandString isEqualToString:@"LUNCH"]) {
        [[client invokeOnMainThread] sendPrivmsgToSelectedChannel:@"Going to grab some lunch"];
        [[client invokeOnMainThread] changeNick:@"DavidR|Lunch"];
        [[client invokeOnMainThread] sendCommand:@"AWAY Lunch"];        
    }
    else {
        [[client invokeOnMainThread] changeNick:@"DavidR"];
        [[client invokeOnMainThread] sendCommand:@"AWAY"];                
    }

}
- (NSArray *)pluginSupportsUserInputCommands
{
    return [NSArray arrayWithObjects:@"lunch", @"full", nil];
}
@end
