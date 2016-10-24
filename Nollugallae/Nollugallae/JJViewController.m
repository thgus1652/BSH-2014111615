//
//  JJViewController.m
//  Nollugallae
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "JJViewController.h"

@interface JJViewController ()

@end

@implementation JJViewController
@synthesize picker;
@synthesize imageView1,imageView2,imageView3;
@synthesize label;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    data = [[NSArray alloc] initWithObjects:@"성산일출봉",@"협재해수욕장",@"우도", nil];
    sungImage1 = [UIImage imageNamed:@"sung1.jpg"];
    sungImage2 = [UIImage imageNamed:@"sung2.jpg"];
    sungImage3 = [UIImage imageNamed:@"sung3.jpg"];
    
    islandImage1 = [UIImage imageNamed:@"island1.jpg"];
    islandImage2 = [UIImage imageNamed:@"island2.jpg"];
    islandImage3 = [UIImage imageNamed:@"island3.jpg"];
    
    beachImage1 = [UIImage imageNamed:@"beach1.jpg"];
    beachImage2 = [UIImage imageNamed:@"beach2.jpg"];
    beachImage3 = [UIImage imageNamed:@"beach3.jpg"];
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

- (IBAction)getValue {
    NSString* index = [data objectAtIndex:[self.picker selectedRowInComponent: 0]];
    
    if([index isEqualToString:@"성산일출봉"])
    {
        [imageView1 setImage:sungImage1];
        [imageView2 setImage:sungImage2];
        [imageView3 setImage:sungImage3];
        
        label.text = @" 성산일출봉 위치 :\n제주 서귀포시 성산읍 일출로\n 등산 이용요금:\n 대인(2000원), 소인(1000원)";
        
    }
    if([index isEqualToString:@"협재해수욕장"])
    {
        [imageView1 setImage:beachImage1];
        [imageView2 setImage:beachImage2];
        [imageView3 setImage:beachImage3];
        label.text=@"협재 해수욕장 위치 :\n 제주시 한림읍 협재리\n특징 : \n에메랄드 물색깔에 놀라게 만드는 해변";
    }
    if([index isEqualToString:@"우도"])
    {
        [imageView1 setImage:islandImage1];
        [imageView2 setImage:islandImage2];
        [imageView3 setImage:islandImage3];
        label.text=@"우도 위치 : \n제주시 우도면\n 많이 찾는 월 : 4월,10월";
    }

    
    
}
- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger) pickerView:(UIPickerView *)pickerView
 numberOfRowsInComponent:(NSInteger)component {
    
    return [data count];
    
}

- (NSString *) pickerView:(UIPickerView *)pickerView
              titleForRow:(NSInteger)row  forComponent:(NSInteger)component {
    
    return [data objectAtIndex:row];
    
}


@end
