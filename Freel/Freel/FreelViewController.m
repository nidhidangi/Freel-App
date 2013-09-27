//
//  FreelViewController.m
//  Freel
//
//  Created by VVDN on 24/09/13.
//  Copyright (c) 2013 VVDN. All rights reserved.
//

#import "FreelViewController.h"

@interface FreelViewController ()<UITextFieldDelegate>


@end


@implementation FreelViewController
@synthesize textField=_textField;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//***********************************************************************************************************************************************************************//
//** Method      : textFieldShouldReturn
//** Overview    : The text field called this method whenever the user taps the return button. you can use this method to implement any custom behavior when the button is tapped.
//** Declared In : UITextField.h
//** Parameters  : textField
//** return value: YES if the text field should implement its default behavior for the return button; otherwise,NO.
//***********************************************************************************************************************************************************************//

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    [textField resignFirstResponder];
    return YES;
}


@end
