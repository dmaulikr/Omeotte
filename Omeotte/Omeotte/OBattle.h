//
//  OBattle.h
//  Omeotte
//
//  Created by Jovito Royeca on 9/2/13.
//  Copyright (c) 2013 JJJ Software. All rights reserved.
//

#import "Sparrow.h"

#import "OCard.h"
#import "OPlayer.h"
#import "ORule.h"
#import "OMedia.h"

typedef enum
{
    Upkeep = 0,
    Draw,
    Main,
    Victory,
    Discard
} GamePhase;

@interface OBattle : SPSprite
{
    OPlayer *_currentPlayer;
    NSString *_deck;
    GamePhase _gamePhase;
}

@property (strong, nonatomic) SPTextField *txtPlayer1Name;
@property (strong, nonatomic) SPTextField *txtPlayer1Tower;
@property (strong, nonatomic) SPTextField *txtPlayer1Wall;
@property (strong, nonatomic) SPTextField *txtPlayer1Quarries;
@property (strong, nonatomic) SPTextField *txtPlayer1Magics;
@property (strong, nonatomic) SPTextField *txtPlayer1Dungeons;
@property (strong, nonatomic) SPTextField *txtPlayer2Name;
@property (strong, nonatomic) SPTextField *txtPlayer2Tower;
@property (strong, nonatomic) SPTextField *txtPlayer2Wall;
@property (strong, nonatomic) SPTextField *txtPlayer2Quarries;
@property (strong, nonatomic) SPTextField *txtPlayer2Magics;
@property (strong, nonatomic) SPTextField *txtPlayer2Dungeons;

@property (strong, nonatomic) NSArray *players;
@property (strong, nonatomic) ORule* rule;
@property (strong, nonatomic) NSMutableArray *hand;

//-(id) initWithRule:(ORule*)rule;

-(void) initPlayers;
-(void) showHand;

@end