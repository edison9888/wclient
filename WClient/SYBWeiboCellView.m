//
//  SYB.m
//  WClient
//
//  Created by Song Xiaoming on 13-11-1.
//  Copyright (c) 2013年 Song Xiaoming. All rights reserved.
//

#import "SYBWeiboCellView.h"

@implementation SYBWeiboCellView

- (id)init
{
    self = [super init];
    if (self) {
      
    }
    return self;
}

- (void)prepareForReuse
{
    _iconView.image = nil;
    _poImage.imageView.image = nil;
    
}
@end
