//
//  GameModel.h
//  TwoPlayerMath
//
//  Created by Benson Huynh on 2015-10-26.
//  Copyright © 2015 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"


@interface GameModel : NSObject

@property (nonatomic, strong) Player *player1;
@property (nonatomic, strong) Player *player2;
@property (nonatomic, assign) int currentPlayer;


-(int)randomNumberFrom:(int)from to:(int)to;
-(NSString *)randomQuestion;


@end
