//
//  ChooseLevel.m
//  Spot
//
//  Created by Podevor on 12-11-7.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "ChooseLevel.h"
#import "CCBReader.h"


@implementation ChooseLevel

- (void) onPressedBack:(id) sender{
    CCLOG(@"press back");
    CCScene *chooseLevelScene = [CCBReader sceneWithNodeGraphFromFile:@"spothome.ccbi"];
    [[CCDirector sharedDirector] replaceScene:chooseLevelScene];
}

- (void) onLevel1Pressed:(id) sender{
    CCLOG(@"press 1");    
    CCScene *chooseLevelScene = [CCBReader sceneWithNodeGraphFromFile:@"level1.ccbi"];
   [[CCDirector sharedDirector] replaceScene:chooseLevelScene];
}
- (void) onLevel2Pressed:(id) sender{
    CCLOG(@"press 2");
    
    CCScene *chooseLevelScene = [CCBReader sceneWithNodeGraphFromFile:@"level2.ccbi"];
    [[CCDirector sharedDirector] replaceScene:chooseLevelScene];
}
- (void) onLevel3Pressed:(id) sender{
    CCLOG(@"press 3");
    
    CCScene *chooseLevelScene = [CCBReader sceneWithNodeGraphFromFile:@"level3.ccbi"];
    [[CCDirector sharedDirector] replaceScene:chooseLevelScene];
}
@end
