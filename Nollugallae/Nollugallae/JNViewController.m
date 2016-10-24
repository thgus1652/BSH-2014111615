//
//  JNViewController.m
//  Nollugallae
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "JNViewController.h"

@interface JNViewController ()

@end

@implementation JNViewController
@synthesize picker;
@synthesize imageView1,imageView2,imageView3;
@synthesize label;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    data = [[NSArray alloc] initWithObjects:@"여수",@"순천만",@"광주", nil];
    gwangjuImage1 = [UIImage imageNamed:@"gwangju1.jpg"];
    gwangjuImage2 = [UIImage imageNamed:@"gwangju2.jpg"];
    gwangjuImage3 = [UIImage imageNamed:@"gwangju3.jpg"];
    
    yeosuImage1 = [UIImage imageNamed:@"yeosu1.jpg"];
    yeosuImage2 = [UIImage imageNamed:@"yeosu2.jpg"];
    yeosuImage3 = [UIImage imageNamed:@"yeosu3.jpg"];
    
    sunchunImage1 = [UIImage imageNamed:@"sunchun1.jpg"];
    sunchunImage2 = [UIImage imageNamed:@"sunchun2.jpg"];
    sunchunImage3 = [UIImage imageNamed:@"sunchun3.jpg"];
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
    
    if([index isEqualToString:@"광주"])
    {
        [imageView1 setImage:gwangjuImage1];
        [imageView2 setImage:gwangjuImage2];
        [imageView3 setImage:gwangjuImage3];
        
        label.text = @"광주 위치 :광주광역시\n 갈 곳: \n 무등산, 국립5.18민주묘지";
        
    }
    if([index isEqualToString:@"순천만"])
    {
        [imageView1 setImage:sunchunImage1];
        [imageView2 setImage:sunchunImage2];
        [imageView3 setImage:sunchunImage3];
        label.text=@"한강 갈 수 있는 역 :\n 여의나루역-5호선\n뚝섬유원지-7호선\n서빙고-경의.중앙선\n광나루-5호선";
    }
    if([index isEqualToString:@"여수"])
    {
        [imageView1 setImage:yeosuImage1];
        [imageView2 setImage:yeosuImage2];
        [imageView3 setImage:yeosuImage3];
        label.text=@"하늘공원 위치 : \n서울 마포구 하늘공원로 108-1\n억새풀 축제 : 10월중\n요금 : 무료";
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
