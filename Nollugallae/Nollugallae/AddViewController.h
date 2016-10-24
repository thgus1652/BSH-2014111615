//
//  AddViewController.h
//  Nollugallae
//
//  Created by SWUComputer on 2016. 10. 23..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddViewController : UIViewController<UITextFieldDelegate>


@property (strong, nonatomic) IBOutlet UILabel *label1;
- (BOOL) textFieldShouldReturn:(UITextField *)textField1;

@property (strong, nonatomic) IBOutlet UITextField *textField;

@property (strong, nonatomic) IBOutlet UILabel *label2;
@end
