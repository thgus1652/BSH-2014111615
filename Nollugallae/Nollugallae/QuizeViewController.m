//
//  QuizeViewController.m
//  Nollugallae
//
//  Created by SWUComputer on 2016. 10. 23..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "QuizeViewController.h"

@interface QuizeViewController ()

@end

@implementation QuizeViewController
@synthesize label1,label2;
@synthesize textField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    
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

- (IBAction)submitButton {
    NSArray *data;
    data = [[NSArray alloc] initWithObjects:@"서울의 가장 멋진 타는?",@"여수밤바다를 부른 가수는?",@"전주의 가장 유명한 음식은?", nil];
    
    label2.text=@"서울의 가장 멋진 타워는?";
    if([textField.text isEqualToString:@"남산타워"])
    {
    }
    else
    {
        label1.text=@"틀렸습니다.";
        
        
    }
        
}
@end
