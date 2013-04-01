//
//  Reputation.m
//  StacMan
//
//  Created by Kevin Montrose on 4/1/13.
//  Copyright (c) 2013 Stack Exchange. All rights reserved.
//

#import "StacManReputation.h"
#import "PropertySetter.h"

@implementation StacManReputation
@synthesize link;
@synthesize on_date;
@synthesize post_id;
@synthesize post_type;
@synthesize reputation_change;
@synthesize title;
@synthesize user_id;
@synthesize vote_type;

+(StacManReputation*)parse:(NSDictionary*)dict
{
    StacManReputation* ret = [[StacManReputation alloc] init];
    
    if(ret)
    {
        Parse([StacManReputation class], ret, dict);
    }
    
    return ret;
}

+(NSArray*)parseArray:(NSArray*)json
{
    NSMutableArray* ret = [NSMutableArray arrayWithCapacity:json.count];
    
    for(int i = 0; i < json.count;i++)
    {
        [ret addObject:[StacManReputation parse:[json objectAtIndex:i]]];
    }
    
    return ret;
}
@end