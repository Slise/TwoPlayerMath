//
//  GameModel.m
//  TwoPlayerMath
//
//  Created by Benson Huynh on 2015-10-26.
//  Copyright © 2015 Benson Huynh. All rights reserved.
//

#import "GameModel.h"

@implementation GameModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _player1 = [[Player alloc] initWithName:@"player1"];
       _player2 = [[Player alloc] initWithName:@"player2"];
        _currentPlayer = 1;
        
    }
    return self;
}

//set initial player for play

-(Player*) getCurrentPlayer {
    if (self.currentPlayer == 1) {
        return self.player1;
    }else
    {
        return self.player2;
    }
    
}



//generate a random number

-(int)randomNumberFrom:(int)from to:(int)to {
    int value1 = (arc4random() % to) + from;
    return value1;
}

//provide the main question

-(NSString *)randomQuestion {
    NSString *currentPlayerName = [self getCurrentPlayer].name;
    int value1 = [self randomNumberFrom:1 to:20];
    int value2 = [self randomNumberFrom:1 to:20];
    NSString *randomQuestion = [NSString stringWithFormat:@"%@: %i + %i", currentPlayerName, value1, value2];
    return randomQuestion;
}


@end
