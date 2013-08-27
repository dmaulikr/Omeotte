//
//  ORules.h
//  Omeotte
//
//  Created by Jovito Royeca on 8/20/13.
//  Copyright (c) 2013 JJJ Software. All rights reserved.
//

#import <Foundation/Foundation.h>

#include "Stats.h"

@interface ORule : NSObject

@property(strong,nonatomic) NSString *name;
@property(strong,nonatomic) NSString *location;
@property(strong,nonatomic) Stats *base;
@property int cardsInHand;
@property int winningTower;
@property int winningResource;
@property int price;

+(NSArray*)allRules;

@end
