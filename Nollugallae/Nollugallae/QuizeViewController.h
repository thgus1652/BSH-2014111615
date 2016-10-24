//
//  QuizeViewController.h
//  Nollugallae
//
//  Created by SWUComputer on 2016. 10. 23..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizeViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *label1;
@property (strong, nonatomic) IBOutlet UILabel *label2;
@property (strong, nonatomic) IBOutlet UITextField *textField;
- (IBAction)submitButton;

@end
