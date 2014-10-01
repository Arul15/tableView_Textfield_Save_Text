//
//  tableViewViewController.m
//  tableView
//
//  Created by sixcroresapp on 5/30/14.
//  Copyright (c) 2014 NTL. All rights reserved.
//

#import "tableViewViewController.h"
//#define TEXT_FIELD_TAG 1000

@interface tableViewViewController ()

@end

@implementation tableViewViewController
@synthesize pArrSelectedSeats;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Custom initialization
    }
    
    return self;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    textFieldValuesArray = [[NSMutableArray alloc]init];
    slidervalue_array1 = [[NSMutableArray alloc]init];
    slidervalue_array2 = [[NSMutableArray alloc]init];

    
    for(int i=1; i< 20; i++) {
        
        [slidervalue_array2 addObject:@"female.png"];

        [nextBtn setImage:[UIImage imageNamed:@"female.png"] forState:UIControlStateNormal];

    }
    

    slidervalue_array = [[NSMutableArray alloc]init];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    
    [slidervalue_array1 addObject:@""];
    [slidervalue_array1 addObject:@""];
    [slidervalue_array1 addObject:@""];
    [slidervalue_array1 addObject:@""];
    [slidervalue_array1 addObject:@""];
    [slidervalue_array1 addObject:@""];
    [slidervalue_array1 addObject:@""];
    [slidervalue_array1 addObject:@""];
    [slidervalue_array1 addObject:@""];
    [slidervalue_array1 addObject:@""];
    [slidervalue_array1 addObject:@""];
    [slidervalue_array1 addObject:@""];
    [slidervalue_array1 addObject:@""];
    [slidervalue_array1 addObject:@""];
    [slidervalue_array1 addObject:@""];
    [slidervalue_array1 addObject:@""];
    [slidervalue_array1 addObject:@""];
    [slidervalue_array1 addObject:@""];
    [slidervalue_array1 addObject:@""];
    [slidervalue_array1 addObject:@""];
    
    
    [slidervalue_array2 addObject:@""];
    [slidervalue_array2 addObject:@""];
    [slidervalue_array2 addObject:@""];
    [slidervalue_array2 addObject:@""];
    [slidervalue_array2 addObject:@""];
    [slidervalue_array2 addObject:@""];
    [slidervalue_array2 addObject:@""];
    [slidervalue_array2 addObject:@""];
    [slidervalue_array2 addObject:@""];
    [slidervalue_array2 addObject:@""];
    [slidervalue_array2 addObject:@""];
    [slidervalue_array2 addObject:@""];
    [slidervalue_array2 addObject:@""];
    [slidervalue_array2 addObject:@""];
    [slidervalue_array2 addObject:@""];
    [slidervalue_array2 addObject:@""];
    [slidervalue_array2 addObject:@""];
    [slidervalue_array2 addObject:@""];
    [slidervalue_array2 addObject:@""];
    [slidervalue_array2 addObject:@""];

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
 {
   return  20;
 }

 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
     
     @try {
 
 
         static NSString *CellIdentifier = @"Cell";
     
         UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
            if (cell == nil) {
                
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
                
            }
         
         nextBtn = [UIButton buttonWithType:UIButtonTypeCustom];
         nextBtn.frame = CGRectMake(210, 55, 100, 30);
         NSString *pStrImgName = [slidervalue_array2 objectAtIndex:indexPath.row];
         [nextBtn setImage:[UIImage imageNamed:pStrImgName] forState:UIControlStateNormal];
         nextBtn.tag = indexPath.row;
         [nextBtn addTarget:self action:@selector(nextPage:) forControlEvents:UIControlEventTouchUpInside];
         [cell.contentView addSubview:nextBtn];
     
         slider_textfield = [[UITextField alloc] initWithFrame:CGRectMake(10, 10, 300, 30)];
         slider_textfield.borderStyle = UITextBorderStyleRoundedRect;
         slider_textfield.font = [UIFont fontWithName:@"TrebuchetMS" size:15.0];
         slider_textfield.placeholder = @"Enter Full Name here";
         slider_textfield.delegate = self;
         slider_textfield.tag=indexPath.row;
         slider_textfield.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
         slider_textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
         [slider_textfield addTarget:self action:@selector(tctFieldChange:) forControlEvents:UIControlEventEditingChanged];
         slider_textfield.text=[NSString stringWithFormat:@"%@",[slidervalue_array objectAtIndex:indexPath.row]];
         [slider_textfield setTag:indexPath.row + 2501];
         [cell.contentView addSubview:slider_textfield];
         
         extra_txtfield = [[UITextField alloc] initWithFrame:CGRectMake(10, 55, 80, 30)];
         extra_txtfield.borderStyle = UITextBorderStyleRoundedRect;
         extra_txtfield.delegate = self;
         extra_txtfield.font = [UIFont fontWithName:@"TrebuchetMS" size:15.0];
         extra_txtfield.placeholder = @"Age";
         extra_txtfield.tag=indexPath.row;
         extra_txtfield.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
         extra_txtfield.clearButtonMode = UITextFieldViewModeWhileEditing;
         [extra_txtfield addTarget:self action:@selector(tctFieldChange:) forControlEvents:UIControlEventEditingChanged];
         extra_txtfield.text=[NSString stringWithFormat:@"%@",[slidervalue_array1 objectAtIndex:indexPath.row]];
        [extra_txtfield setTag:indexPath.row + 1501];
         [cell.contentView addSubview:extra_txtfield];
         
         [cell setSelectionStyle:UITableViewCellSelectionStyleNone];

         return cell;
 
     } @catch (NSException *exception) {
 
         NSLog(@"Exception Error %@",exception);
    
     } @finally {
 
     }
 }


- (void)segmentedControlChanged:(id)selector {
    UISegmentedControl *control = selector;
    NSInteger selected = [control selectedSegmentIndex];
    
    if(selected == 0){
        isManual = NO;
    }
    else{
        isManual = YES;
    }
    [pTblContactDetails reloadData];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
  //  slider_textfield = nil;
   
}


- (void)nextPage:(UIButton*)sender {
    
    NSInteger cellPosition = sender.tag;
    
    NSLog(@"Cell position value %ld",(long)cellPosition);
    
    if ([sender currentImage]==[UIImage imageNamed:@"male.png"]) {
        
        [sender setImage:[UIImage imageNamed:@"female.png"] forState:UIControlStateNormal];
        NSString *slid=[NSString stringWithFormat:@"female.png"];
        [slidervalue_array2 replaceObjectAtIndex:(cellPosition) withObject:slid];
        
    } else {
        
        [sender setImage:[UIImage imageNamed:@"male.png"] forState:UIControlStateNormal];
        NSString *slid=[NSString stringWithFormat:@"male.png"];
        [slidervalue_array2 replaceObjectAtIndex:(cellPosition) withObject:slid];
        
    }
    
}

/*- (IBAction)segmentAction:(id)sender {
    
    segmentedControl = (UISegmentedControl *) sender;
    
    if (segmentedControl.selectedSegmentIndex  == 1) {
      
        NSString *SegIndex = [NSString stringWithFormat:@"%ld",(long)[segmentedControl selectedSegmentIndex]];
        [slidervalue_array2 replaceObjectAtIndex:[segmentedControl tag] withObject:SegIndex];
        
     } else {
       
         NSString *SegIndex = [NSString stringWithFormat:@"%ld",(long)[segmentedControl selectedSegmentIndex]];
         [slidervalue_array2 replaceObjectAtIndex:[segmentedControl tag] withObject:SegIndex];
         
     }
    
}*/

- (void)tctFieldChange:(UITextField *)sender {
    
    NSInteger cellPosition = sender.tag;
    UITextField *txt = (UITextField *)sender;
    NSString *slid=[NSString stringWithFormat:@"%@",txt.text];
    
     if ((sender.tag > 2500) && (sender.tag < 3000)){
  
    [slidervalue_array replaceObjectAtIndex:(cellPosition-2501) withObject:slid];
     }
     else if ((sender.tag > 1500) && (sender.tag < 2000)){
  
         [slidervalue_array1 replaceObjectAtIndex:(cellPosition-1501) withObject:slid];
         
     }
}


-(void)viewDidAppear:(BOOL)animated
{
    // Register notification when the keyboard will be show
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillShow:)
                                                 name:UIKeyboardWillShowNotification
                                               object:nil];
    
    // Register notification when the keyboard will be hide
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillHide:)
                                                 name:UIKeyboardWillHideNotification
                                               object:nil];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

-(void)viewDidDisappear:(BOOL)animated
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

-(void) keyboardWillShow:(NSNotification *)note
{
    // Get the keyboard size
    CGRect keyboardBounds;
    [[note.userInfo valueForKey:UIKeyboardFrameBeginUserInfoKey] getValue: &keyboardBounds];
    
    // Detect orientation
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    CGRect frame = pTblContactDetails.frame;
    
    // Start animation
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationDuration:0.3f];
    
    // Reduce size of the Table view
    if (orientation == UIInterfaceOrientationPortrait || orientation == UIInterfaceOrientationPortraitUpsideDown)
        frame.size.height -= keyboardBounds.size.height;
    else
        frame.size.height -= keyboardBounds.size.width;
    
    // Apply new size of table view
    pTblContactDetails.frame = frame;
    
    // Scroll the table view to see the TextField just above the keyboard
    if (slider_textfield) {
        CGRect textFieldRect = [pTblContactDetails convertRect:slider_textfield.bounds fromView:slider_textfield];
        [pTblContactDetails scrollRectToVisible:textFieldRect animated:NO];
    }
    
    [UIView commitAnimations];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    slider_textfield = textField;
}

-(void) keyboardWillHide:(NSNotification *)note
{
    // Get the keyboard size
    CGRect keyboardBounds;
    [[note.userInfo valueForKey:UIKeyboardFrameBeginUserInfoKey] getValue: &keyboardBounds];
    
    // Detect orientation
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    CGRect frame = pTblContactDetails.frame;
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationDuration:0.3f];
    
    // Reduce size of the Table view
    if (orientation == UIInterfaceOrientationPortrait || orientation == UIInterfaceOrientationPortraitUpsideDown)
        frame.size.height += keyboardBounds.size.height;
    else 
        frame.size.height += keyboardBounds.size.width;
    
    // Apply new size of table view
    pTblContactDetails.frame = frame;
    
    [UIView commitAnimations];
}


- (IBAction)fnGoBack:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
