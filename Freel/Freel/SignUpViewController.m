//
//  SignUpViewController.m
//  Freel
//
//  Created by MEGHA-MAC on 9/24/13.
//  Copyright (c) 2013 VVDN. All rights reserved.
//

#import "SignUpViewController.h"

@interface SignUpViewController ()<UITextFieldDelegate>


@end


@implementation SignUpViewController


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
	// Do any additional setup after loading the view.
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


@end
