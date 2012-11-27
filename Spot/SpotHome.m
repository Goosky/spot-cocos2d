//
//  SpotHome.m
//  Spot
//
//  Created by Podevor on 12-11-7.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "SpotHome.h"
#import "CCBReader.h"

@implementation SpotHome

- (id) init{
    if (self = [super init]) {
        CCLOG(@"Scene init");
    }
    return self;
}

- (void) onPressedStart:(id)sender{
    CCLOG(@"press start");
    CCScene *chooseLevelScene = [CCBReader sceneWithNodeGraphFromFile:@"ChooseLevel.ccbi"];
    [[CCDirector sharedDirector] replaceScene:chooseLevelScene];
}
@end
