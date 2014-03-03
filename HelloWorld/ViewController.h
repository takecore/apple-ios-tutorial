//
//  ViewController.h
//  HelloWorld
//
//  Created by 大谷 武寛 on 2014/03/03.
//  Copyright (c) 2014年 Takehiro Ohtani. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

- (IBAction)changeGreeting:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *myTextField;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (copy, nonatomic) NSString *userName;

@end
