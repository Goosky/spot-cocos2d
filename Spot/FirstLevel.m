//
//  Level1.m
//  Spot
//
//  Created by Podevor on 12-11-7.
//  Copyright offset12年 __MyCompanyName__. All rights reserved.
//

#import "FirstLevel.h"
#import "CCBReader.h"


@implementation FirstLevel
static int timeLine = 10;
int offset = 40;
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
            [sp11a setVisible:NO];
            [sp11b setVisible:NO];
            [sp11 setVisible:NO];
            [sp12 setVisible:NO];
            [sp13 setVisible:NO];
            [sp11cca setVisible:NO];
            [sp12cca setVisible:NO];
            [sp13cca setVisible:NO];
            [sp11ccb setVisible:NO];
            [sp12ccb setVisible:NO];
            [sp13ccb setVisible:NO];
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
    CGPoint sp11pos = sp11.position;
    CGPoint sp11ccbpos = sp11ccb.position;
    if ( (touchPoint.x >= sp11pos.x-offset
        && touchPoint.x <= sp11pos.x+offset
        && touchPoint.y >= sp11pos.y-offset
        && touchPoint.y <= sp11pos.y+offset)
        || (touchPoint.x >= sp11ccbpos.x-offset
        && touchPoint.x <= sp11ccbpos.x+offset
        && touchPoint.y >= sp11ccbpos.y-offset
        && touchPoint.y <= sp11ccbpos.y+offset) ) {
        [sp11cca setVisible:YES];
        [sp11ccb setVisible:YES];
    }
    CGPoint sp12pos = sp12.position;
    CGPoint sp12ccbpos = sp12ccb.position;
    if ( (touchPoint.x >= sp12pos.x-offset
          && touchPoint.x <= sp12pos.x+offset
          && touchPoint.y >= sp12pos.y-offset
          && touchPoint.y <= sp12pos.y+offset)
        || (touchPoint.x >= sp12ccbpos.x-offset
            && touchPoint.x <= sp12ccbpos.x+offset
            && touchPoint.y >= sp12ccbpos.y-offset
            && touchPoint.y <= sp12ccbpos.y+offset) ) {
            [sp12cca setVisible:YES];
            [sp12ccb setVisible:YES];
        }
    CGPoint sp13pos = sp13.position;
    CGPoint sp13ccbpos = sp13ccb.position;
    if ( (touchPoint.x >= sp13pos.x-offset
          && touchPoint.x <= sp13pos.x+offset
          && touchPoint.y >= sp13pos.y-offset
          && touchPoint.y <= sp13pos.y+offset)
        || (touchPoint.x >= sp13ccbpos.x-offset
            && touchPoint.x <= sp13ccbpos.x+offset
            && touchPoint.y >= sp13ccbpos.y-offset
            && touchPoint.y <= sp13ccbpos.y+offset) ) {
            [sp13cca setVisible:YES];
            [sp13ccb setVisible:YES];
        }
    return YES;
}
@end
