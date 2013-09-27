//
//  SignUpViewController.m
//  Freel
//
//  Created by MEGHA-MAC on 9/24/13.
//  Copyright (c) 2013 VVDN. All rights reserved.
//

#import "SignUpViewController.h"
#import "PopupDatePicker.h"
#import "PopupDatePickerDelegate.h"
#import "Constants.h"


@interface SignUpViewController ()<UITextFieldDelegate>


@end


@implementation SignUpViewController
@synthesize popupDatePicker = _popupDatePicker;

UIDatePicker *picker;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    _popupDatePicker = [[PopupDatePicker alloc] init];
    self.popupDatePicker.delegate = self;

	// Do any additional setup after loading the view.
}


- (void) viewWillAppear:(BOOL)animated
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSNumber *animationDuration = [defaults objectForKey:kAnimationDuration];
    NSNumber *animationDelay = [defaults objectForKey:kAnimationDelay];
    
    self.popupDatePicker.animationDuration = [animationDuration floatValue];
    self.popupDatePicker.animationDelay = [animationDelay floatValue];
}

#pragma mark PopupDatePicker delegate methods

- (void) popupDatePickerWillShow: (PopupDatePicker *) datePicker animated: (BOOL) animated
{
    NSLog(@"will show");
}

- (void) popupDatePickerDidShow:(PopupDatePicker *) datePicker animated :(BOOL)animated
{
    NSNumber *clearDateOnShow = [[NSUserDefaults standardUserDefaults] objectForKey:kClearDateOnShow];
    if ([clearDateOnShow boolValue] == YES)
    {
        self.displayDate.text=nil;
        //self.dateLabel.text = nil;
    }
}

- (void) popupDatePickerWillHide:(PopupDatePicker *) datePicker animated: (BOOL) animated
{
    NSLog(@"will hide");
}

- (void) popupDatePickerDidHide: (PopupDatePicker *) datePicker animated: (BOOL) animated
{
    NSNumber *showDateOnHide = [[NSUserDefaults standardUserDefaults] objectForKey:kShowDateOnHide];
    
    if ([showDateOnHide boolValue] == YES)
    {
        //self.dateLabel.text = [datePicker.date description];
        self.displayDate.text=[datePicker.date description];
    }
}

- (void) popupDatePicker: (PopupDatePicker *) datePicker didSelectDate:(NSDate *)date
{
    NSNumber *showDateOnHide = [[NSUserDefaults standardUserDefaults] objectForKey:kShowDateOnHide];
    
    if ([showDateOnHide boolValue] == NO)
    {
       NSDateFormatter *fmtDate = [[NSDateFormatter alloc] init];
        [fmtDate setDateFormat:@"yyyy/MM/dd" ];
        self.displayDate.text = [fmtDate stringFromDate:date];
        
    }
}



//*************************************************************************************************************************************************************************//
//** Method      : textFieldShouldReturn
//** Overview    : The text field called this method whenever the user taps the return button. you can use this method to implement any custom behavior when the button is tapped.
//** Declared In : UITextField.h
//** Parameters  : textField
//** return value: YES if the text field should implement its default behavior for the return button; otherwise,NO.
//************************************************************************************************************************************************************************//

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    [textField resignFirstResponder];
    return YES;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)Dropdowncalender:(id)sender
{
   
    [self.popupDatePicker showFromView:self.view];

}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{

    
    
}

@end
