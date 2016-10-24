//
//  AddViewController.m
//  Nollugallae
//
//  Created by SWUComputer on 2016. 10. 23..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "AddViewController.h"

@interface AddViewController ()

@end

@implementation AddViewController

@synthesize label1,label2;
@synthesize textField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    label1.text=@"저희 '놀러갈래?'에 더 원하시는 여행지가 있다면 추천해주세요!";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (BOOL) textFieldShouldReturn: (UITextField *) textField1 {
    [textField resignFirstResponder];
    self.label2.text = [NSString stringWithFormat:@"%@ 제출 감사합니다.", textField1.text];
    return YES;
}
@end
