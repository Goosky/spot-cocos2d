//
//  Level1.m
//  Spot
//
//  Created by Podevor on 12-11-7.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "ThirdLevel.h"
#import "CCBReader.h"


@implementation ThirdLevel

static int timeLine = 10;
- (void) onEnter{
    timeLine = 10;
	CCDirector *director =  [CCDirector sharedDirector];
    
	[[director touchDispatcher] addTargetedDelegate:self priority:0 swallowsTouches:YES];
    [gameover setVisible:NO];
    CCLOG(@"onEnter");    
    [timer setString:[NSString stringWithFormat:@"%d",timeLine]];
    nstimer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
    [super onEnter];
}

- (void) onExit{
    if (timeLine != 0) {        
        [nstimer invalidate];
    }
    CCDirector *director = [CCDirector sharedDirector];
    
	[[director touchDispatcher] removeDelegate:self];
    [super onExit];
}

- (void) updateTimer{
    CCLOG(@"updateTimer");
    if (timer != nil) {
        if (timeLine == 0) {
            [sp1a setVisible:NO];
            [sp1b setVisible:NO];
            [gameover setVisible:YES];
            [nstimer invalidate];
            
            CCDirector *director = [CCDirector sharedDirector];
            
            [[director touchDispatcher] removeDelegate:self];
        }else{
            timeLine--;
        }
        [timer setString:[NSString stringWithFormat:@"%d",timeLine]];
    }
}
- (void) onPressedBack:(id) sender{
    CCLOG(@"press back");
    if (timeLine == 0) {
        CCScene *chooseLevelScene = [CCBReader sceneWithNodeGraphFromFile:@"ChooseLevel.ccbi"];
        [[CCDirector sharedDirector] replaceScene:chooseLevelScene];
    }else{
        CCLOG(@"GameRunning");
    }
}

- (BOOL) ccTouchBegan:(UITouch *)touch withEvent:(UIEvent *)event{
    CCLOG(@"ccTouchBegan");
    CGPoint touchPoint = [touch locationInView:[touch view]];
    touchPoint = [[CCDirector sharedDirector] convertToGL:touchPoint];
    CCLOG(@"x %f y %f",touchPoint.x,touchPoint.y);
    return YES;
}
@end
