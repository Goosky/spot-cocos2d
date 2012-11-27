//
//  Level1.h
//  Spot
//
//  Created by Podevor on 12-11-7.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface FirstLevel : CCLayer <CCTargetedTouchDelegate> {
    CCLabelTTF *timer;
    CCLabelTTF *gameover;
    CCSprite *sp11a;
    CCSprite *sp11b;
    NSTimer *nstimer;
    CCSprite *sp11;
    CCSprite *sp11cca;
    CCSprite *sp11ccb;
    CCSprite *sp12;
    CCSprite *sp12cca;
    CCSprite *sp12ccb;
    CCSprite *sp13;
    CCSprite *sp13cca;
    CCSprite *sp13ccb;
}

@end
