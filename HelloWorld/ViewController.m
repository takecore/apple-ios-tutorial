//
//  ViewController.m
//  HelloWorld
//
//  Created by 大谷 武寛 on 2014/03/03.
//  Copyright (c) 2014年 Takehiro Ohtani. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize userName = _userName;

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

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField
{
    if (theTextField == self.myTextField)
    {
        [theTextField resignFirstResponder];
    }
    return YES;
}

- (IBAction)changeGreeting:(id)sender
{
    self.userName = self.myTextField.text;
    NSString *nameString = self.userName;
    
    if ([nameString length] == 0) {
        
        nameString = @"World";
    }
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
    self.label.text = greeting;
    
}
@end
