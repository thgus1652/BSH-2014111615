//
//  JBViewController.m
//  Nollugallae
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "JBViewController.h"

@interface JBViewController ()

@end

@implementation JBViewController

@synthesize picker;
@synthesize imageView1,imageView3,imageView2;
@synthesize label;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    data = [[NSArray alloc] initWithObjects:@"전주한옥마을",@"진안마이산",@"고산자연휴양림", nil];
    hanokImage1 = [UIImage imageNamed:@"junju1.jpg"];
    hanokImage2 = [UIImage imageNamed:@"junju2.jpg"];
    hanokImage3 = [UIImage imageNamed:@"junju3.jpg"];
    
    natureImage1 = [UIImage imageNamed:@"nature1.png"];
    natureImage2 = [UIImage imageNamed:@"nature2.jpg"];
    natureImage3 = [UIImage imageNamed:@"nature3.jpg"];
    
    mountainImage1 = [UIImage imageNamed:@"mountain1.jpeg"];
    mountainImage2 = [UIImage imageNamed:@"mountain2.jpg"];
    mountainImage3 = [UIImage imageNamed:@"mountain3.png"];

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
    
    if([index isEqualToString:@"전주한옥마을"])
    {
        [imageView1 setImage:hanokImage1];
        [imageView2 setImage:hanokImage2];
        [imageView3 setImage:hanokImage3];
        
        label.text = @" 전주한옥마을 위치 :\n 전주시 완산구 고사동\n 맛집체험:\n 베테랑칼국수, 길거리야, 현대옥콩나물국밥, 찹살떡 ";
        
    }
    if([index isEqualToString:@"진안마이산"])
    {
        [imageView1 setImage:natureImage1];
        [imageView2 setImage:natureImage2];
        [imageView3 setImage:natureImage3];
        
        label.text=@"마이산 주소 :\n 전북 진안군 마령면 마이산남로\n 많이 찾는 월:\n4월,11월";
    }
    if([index isEqualToString:@"고산자연휴양림"])
    {
        [imageView1 setImage:mountainImage1];
        [imageView2 setImage:mountainImage2];
        [imageView3 setImage:mountainImage3];
        label.text=@"고산자연휴양림 위치 :\n 전북 완주군 고산면\n 숙박시설 이용 :\n 어른(2000원),청소년(1500원),\n어린이(1000원)";
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
