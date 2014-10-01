//
//  SimpleTableCell.m
//  SimpleTable
//
//  Created by Simon Ng on 28/4/12.
//  Copyright (c) 2012 Appcoda. All rights reserved.
//

#import "SimpleTableCell.h"

@implementation SimpleTableCell
@synthesize pTxtName = _pTxtName;
@synthesize pTxtAge = _pTxtAge;
@synthesize pSegmentControl = _pSegmentControl;
@synthesize pLblSeat = _pLblSeat;


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        _pTxtName = [[UITextField alloc]initWithFrame:CGRectMake(110, 10, 185, 30)];
        [self addSubview:_pTxtName];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end


