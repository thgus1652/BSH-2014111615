//
//  CNViewController.m
//  Nollugallae
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "CNViewController.h"

@interface CNViewController ()

@end

@implementation CNViewController
@synthesize picker;
@synthesize imageView1,imageView2,imageView3;
@synthesize label;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    data = [[NSArray alloc] initWithObjects:@"대전",@"대천해수욕장",@"태안", nil];
    daejunImage1 = [UIImage imageNamed:@"daejun1.jpg"];
    daejunImage2 = [UIImage imageNamed:@"daejun2.jpg"];
    daejunImage3 = [UIImage imageNamed:@"daejun3.jpg"];
    
    daechunImage1 = [UIImage imageNamed:@"sea1.jpg"];
    daechunImage2 = [UIImage imageNamed:@"sea2.jpg"];
    daechunImage3 = [UIImage imageNamed:@"sea3.jpg"];
    
    taeanImage1 = [UIImage imageNamed:@"taean1.jpg"];
    taeanImage2 = [UIImage imageNamed:@"taean2.jpg"];
    taeanImage3 = [UIImage imageNamed:@"taean3.jpg"];
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
    
    if([index isEqualToString:@"대전"])
    {
        [imageView1 setImage:daejunImage1];
        [imageView2 setImage:daejunImage2];
        [imageView3 setImage:daejunImage3];
        
        label.text = @"대전 명소 :\n한화이글스파크,유림공원,\n 서울->대전 시간:\n자동차-1시간54분";
        
    }
    if([index isEqualToString:@"대천해수욕장"])
    {
        [imageView1 setImage:daechunImage1];
        [imageView2 setImage:daechunImage2];
        [imageView3 setImage:daechunImage3];
        label.text=@"대천해수욕장 위치 :\n 충청남도 보령시 신흑동\n근방 축제 :\n보령머드축제, 레저스포츠 페스티벌";
    }
    if([index isEqualToString:@"태안"])
    {
        [imageView1 setImage:taeanImage1];
        [imageView2 setImage:taeanImage2];
        [imageView3 setImage:taeanImage3];
        label.text=@"태안 위치 :\n 충청남도 태안군 \n 주요 사건 : \n2007년 허베이 스피릿호 기름유출사건";
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
