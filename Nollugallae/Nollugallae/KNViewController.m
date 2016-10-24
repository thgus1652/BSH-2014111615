//
//  KNViewController.m
//  Nollugallae
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "KNViewController.h"

@interface KNViewController ()

@end

@implementation KNViewController
@synthesize picker;
@synthesize imageView1,imageView2,imageView3;
@synthesize label;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    data = [[NSArray alloc] initWithObjects:@"울산",@"부산",@"대구", nil];
    ulsanImage1 = [UIImage imageNamed:@"ulsan1.jpg"];
    ulsanImage2 = [UIImage imageNamed:@"ulsan2.jpg"];
    ulsanImage3 = [UIImage imageNamed:@"ulsan3.jpg"];
    
    busanImage1 = [UIImage imageNamed:@"busan1.jpg"];
    busanImage2 = [UIImage imageNamed:@"busan2.jpg"];
    busanImage3 = [UIImage imageNamed:@"busan3.jpg"];
    
    daeguImage1 = [UIImage imageNamed:@"daegu1.jpg"];
    daeguImage2 = [UIImage imageNamed:@"daegu2.jpg"];
    daeguImage3 = [UIImage imageNamed:@"daegu3.jpg"];

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
    
    if([index isEqualToString:@"울산"])
    {
        [imageView1 setImage:ulsanImage1];
        [imageView2 setImage:ulsanImage2];
        [imageView3 setImage:ulsanImage3];
        
        label.text = @" 울산 위치 :\n 울산광역시 전하동 \n 동구 여행:\n 슬도, 대왕암공원, 몽돌해수욕장 ";
        
    }
    if([index isEqualToString:@"부산"])
    {
        [imageView1 setImage:busanImage1];
        [imageView2 setImage:busanImage2];
        [imageView3 setImage:busanImage3];
        label.text=@"부산 갈 곳 :\n감천문화마을,해동용궁사,태종대\n특징 :\n제2의 도시이자 제 1의 무역항이다.";
    }
    if([index isEqualToString:@"대구"])
    {
        [imageView1 setImage:daeguImage1];
        [imageView2 setImage:daeguImage2];
        [imageView3 setImage:daeguImage3];
        label.text=@"대구 위치 : \n대구광역시 대구\n대구 갈 곳 : \n이월드,네이처파크,83타워";
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
