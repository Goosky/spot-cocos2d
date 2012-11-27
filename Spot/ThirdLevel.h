//
//  Level1.h
//  Spot
//
//  Created by Podevor on 12-11-7.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface ThirdLevel : CCLayer <CCTargetedTouchDelegate>{
    CCLabelTTF *timer;
    CCLabelTTF *gameover;
    CCSprite *sp1a;
    CCSprite *sp1b;
    NSTimer *nstimer;
}

@end
