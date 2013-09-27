//
//  SignUpViewController.h
//  Freel
//
//  Created by MEGHA-MAC on 9/24/13.
//  Copyright (c) 2013 VVDN. All rights reserved.
//

#import <UIKit/UIKit.h>


@class PopupDatePicker;
@interface SignUpViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textFiled;
@property (weak, nonatomic) IBOutlet UITextField *displayDate;
- (IBAction)Dropdowncalender:(id)sender;
@property (nonatomic, retain) IBOutlet PopupDatePicker *popupDatePicker;

@property (nonatomic, retain) IBOutlet UIButton *preferencesButton;

//-(void)touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event;



@end
