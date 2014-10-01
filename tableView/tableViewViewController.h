//
//  tableViewViewController.h
//  tableView
//
//  Created by sixcroresapp on 5/30/14.
//  Copyright (c) 2014 NTL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tableViewViewController : UIViewController <UITextFieldDelegate>{
    
    NSMutableArray *pArrSelectedSeats;
    UISegmentedControl *segmentedControl;
    
    IBOutlet UITableView *pTblContactDetails;
    UITextField *textFieldName,*textFieldAge;
    NSInteger nextIndexPathRow;
  //  UITextField *tfA1,*tfA2,*tfA3,*tfA4,*tfA5,*tfA6,*tfA7,*tfA8,*tfA9,*tfA10,*tfA11,*tfA12;
    NSMutableArray *textFieldValuesArray;
    
    IBOutlet UIScrollView *pScrollView;
    
    NSMutableArray *slidervalue_array;
    
    NSMutableArray *slidervalue_array1,*slidervalue_array2;
    UITextField *extra_txtfield,*slider_textfield;
    
    UIButton *nextBtn;
    
    BOOL isManual;
}
- (IBAction)fnGoBack:(id)sender;

@property (strong,retain) NSMutableArray *pArrSelectedSeats;
@end
