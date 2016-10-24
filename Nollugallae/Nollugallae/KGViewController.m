//
//  KGViewController.m
//  Nollugallae
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "KGViewController.h"

@interface KGViewController ()

@end

@implementation KGViewController

@synthesize picker;
//@synthesize hanGangImageView;
@synthesize imageView1;
@synthesize imageView2;
@synthesize imageView3;
@synthesize label;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    data = [[NSArray alloc] initWithObjects:@"남산타워", @"하늘공원",
             @"한강", nil];
    //hanGangImage = [UIImage imageNamed:@"hanGangImage1.jpeg"];
    hanGangImage1 = [UIImage imageNamed:@"hanGangImage1.jpeg"];
    hanGangImage2 = [UIImage imageNamed:@"hanGangImage2.jpg"];
    hangangImage3 = [UIImage imageNamed:@"hanGangImage3.jpg"];
    
    parkImage1 = [UIImage imageNamed:@"park1.jpg"];
    parkImage2 = [UIImage imageNamed:@"park2.jpg"];
    parkImage3 = [UIImage imageNamed:@"park3.jpg"];
    
    towerImage1 = [UIImage imageNamed:@"tower1.jpg"];
    towerImage2 = [UIImage imageNamed:@"tower2.jpg"];
    towerImage3 = [UIImage imageNamed:@"tower3.jpg"];
    
    

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
    
    if([index isEqualToString:@"남산타워"])
    {
        [imageView1 setImage:towerImage1];
        [imageView2 setImage:towerImage2];
        [imageView3 setImage:towerImage3];
        label.text=@" 남산타워 위치 :\n 서울특별시 용산구 용산동 2가 남산 공원\n 남산타워 전망대 이용요금:\n 대인 $10, 소인 $8 ";
        
    }
    if([index isEqualToString:@"한강"])
    {
        [imageView1 setImage:hanGangImage1];
        [imageView2 setImage:hanGangImage2];
        [imageView3 setImage:hangangImage3];
        label.text=@"한강 갈 수 있는 역 :\n 여의나루역-5호선\n뚝섬유원지-7호선\n서빙고-경의.중앙선\n광나루-5호선";
    }
    if([index isEqualToString:@"하늘공원"])
    {
        [imageView1 setImage:parkImage1];
        [imageView2 setImage:parkImage2];
        [imageView3 setImage:parkImage3];
        label.text=@"하늘공원 위치 : \n서울 마포구 하늘공원로 108-1\n억새풀 축제 : 10월중\n요금 :무료 ";
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
