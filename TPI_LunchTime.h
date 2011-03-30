//
//  TPI_LunchTime.h
//  LunchTime
//
//  Created by David Reynolds on 30/03/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TextualApplication.h"

@interface TPI_LunchTime : NSObject {
    
}

- (void)messageSentByUser:(IRCClient *)client
                  message:(NSString *)messageString
                  command:(NSString *)commandString;
- (NSArray *)pluginSupportsUserInputCommands;
@end
