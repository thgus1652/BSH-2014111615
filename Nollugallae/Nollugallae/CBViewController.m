//
//  CBViewController.m
//  Nollugallae
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "CBViewController.h"

@interface CBViewController ()

@end

@implementation CBViewController

@synthesize picker;
@synthesize imageView2,imageView3,imageView1;
@synthesize label;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    data = [[NSArray alloc] initWithObjects:@"충주무학시장",@"의림지",@"수암골", nil];
    wallImage1 = [UIImage imageNamed:@"wall1.jpg"];
    wallImage2 = [UIImage imageNamed:@"wall2.jpg"];
    wallImage3 = [UIImage imageNamed:@"wall3.jpg"];
    
    lakeImage1 = [UIImage imageNamed:@"lake1.jpg"];
    lakeImage2 = [UIImage imageNamed:@"lake2.jpg"];
    lakeImage3 = [UIImage imageNamed:@"lake3.jpg"];
    
    marketImage1 = [UIImage imageNamed:@"market1.jpg"];
    marketImage2 = [UIImage imageNamed:@"market2.jpg"];
    marketImage3 = [UIImage imageNamed:@"market3.jpg"];
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
    
    if([index isEqualToString:@"충주무학시장"])
    {
        [imageView1 setImage:marketImage1];
        [imageView2 setImage:marketImage2];
        [imageView3 setImage:marketImage3];
        
        label.text = @"충주무학시장 :\n 충청북도 충주시 무학1길\n 시장 먹거리:\n 감자만두, 도넛, 순대국밥";
        
    }
    if([index isEqualToString:@"의림지"])
    {
        [imageView1 setImage:lakeImage1];
        [imageView2 setImage:lakeImage2];
        [imageView3 setImage:lakeImage3];
        label.text=@"의림지 위치:\n 충북 제천시 모산동241\n입장료:\n무료";
    }
    if([index isEqualToString:@"수암골"])
    {
        [imageView1 setImage:wallImage1];
        [imageView2 setImage:wallImage2];
        [imageView3 setImage:wallImage3];
        label.text=@"수암골 위치 : \n충청북도 청주시 상당구 수동로 \n많이 찾는 월 : 2월, 12월";
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
