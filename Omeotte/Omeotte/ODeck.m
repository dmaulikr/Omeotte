//
//  ODeck.m
//  Omeotte
//
//  Created by Jovito Royeca on 8/19/13.
//  Copyright (c) 2013 JJJ Software. All rights reserved.
//

#import "ODeck.h"

@implementation ODeck

-(id) init
{
    self = [super init];
    if (self)
    {
        cardsInLibrary = [[NSMutableArray alloc] initWithCapacity:DECK_SIZE];
        cardsInGraveyard = [[NSMutableArray alloc] initWithCapacity:DECK_SIZE];
    }
    return(self);
}

-(void)shuffle
{
    
}

-(OCard*)draw
{
    OCard *card = [cardsInLibrary objectAtIndex:[cardsInLibrary count]-1];
    
    [cardsInLibrary removeLastObject];
    [cardsInGraveyard addObject:card];
    return card;
}

-(void)discard:(OCard*)card
{
    [cardsInGraveyard addObject:card];
}


@end
