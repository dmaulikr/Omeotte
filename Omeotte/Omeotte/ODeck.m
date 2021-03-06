//
//  ODeck.m
//  Omeotte
//
//  Created by Jovito Royeca on 8/19/13.
//  Copyright (c) 2013 JJJ Software. All rights reserved.
//

#import "ODeck.h"

@implementation ODeck

@synthesize cardsInLibrary;
@synthesize cardsInGraveyard;

-(id) init
{
    self = [super init];

    if (self)
    {
        cardsInLibrary = [[NSMutableArray alloc] initWithCapacity:DEFAULT_CARDS_IN_DECK];
        cardsInGraveyard = [[NSMutableArray alloc] initWithCapacity:DEFAULT_CARDS_IN_DECK];
        NSArray *cards;
        
#ifdef CARD_TO_TEST
        cards = [OCard onlyThisCard:CARD_TO_TEST];
#else
        cards = [OCard allCards];
#endif
        for (int i=0; i<DEFAULT_CARDS_IN_DECK; i++)
        {
            NSUInteger random = arc4random() % [cards count];

            [cardsInLibrary addObject:[cards objectAtIndex:random]];
        }
    }
    return self;
}

-(void)shuffle
{
    
}

-(OCard*)drawOnTop
{
    OCard *card = [cardsInLibrary objectAtIndex:[cardsInLibrary count]-1];
    
    [cardsInLibrary removeLastObject];
    return card;
}

-(OCard*)drawRandom
{
    NSUInteger random = arc4random() % [cardsInLibrary count];
    OCard *card = [cardsInLibrary objectAtIndex:random];
    
    [cardsInLibrary removeLastObject];
    return card;
}

-(void)discard:(OCard*)card
{
    [cardsInGraveyard addObject:card];
}

@end
