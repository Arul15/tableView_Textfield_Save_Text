//
//  SimpleTableCell.h
//  SimpleTable
//
//  Created by Simon Ng on 28/4/12.
//  Copyright (c) 2012 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableCell : UITableViewCell <UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UITextField *pTxtName;
@property (nonatomic, weak) IBOutlet UITextField *pTxtAge;
@property (nonatomic, weak) IBOutlet UILabel *pLblSeat;
@property (nonatomic, weak) IBOutlet UISegmentedControl *pSegmentControl;

@end
