//
//  KWViewController.m
//  Nollugallae
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "KWViewController.h"

@interface KWViewController ()

@end

@implementation KWViewController
@synthesize picker;
@synthesize label;
@synthesize imageView1,imageView2,imageView3;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // Do any additional setup after loading the view.
    data = [[NSArray alloc] initWithObjects:@"대관령양떼목장", @"속초",
            @"춘천", nil];
    //hanGangImage = [UIImage imageNamed:@"hanGangImage1.jpeg"];
    daeImage1 = [UIImage imageNamed:@"dae1.jpg"];
    daeImage2 = [UIImage imageNamed:@"dae2.jpg"];
    daeImage3 = [UIImage imageNamed:@"dae3.jpg"];
    
    sokchoImage1 = [UIImage imageNamed:@"sokcho1.jpg"];
    sokchoImage2 = [UIImage imageNamed:@"sokcho2.jpg"];
    sokchoImage3 = [UIImage imageNamed:@"sokcho3.jpg"];
    
    chunchunImage1 = [UIImage imageNamed:@"chunchun1.jpg"];
    chunchunImage2 = [UIImage imageNamed:@"chunchun2.jpg"];
    chunchunImage3 = [UIImage imageNamed:@"chunchun3.jpg"];
    
    

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
    
    if([index isEqualToString:@"대관령양떼목장"])
    {
        [imageView1 setImage:daeImage1];
        [imageView2 setImage:daeImage2];
        [imageView3 setImage:daeImage3];
        label.text=@"대관령양떼목장 위치 :\n 강원 평창군 대관령면 대관령마루길\n 입장료:\n 대인(4000원),소인(3500원),\n경로,장애인(2000원)";
        
    }
    if([index isEqualToString:@"속초"])
    {
        [imageView1 setImage:sokchoImage1];
        [imageView2 setImage:sokchoImage2];
        [imageView3 setImage:sokchoImage3];
        label.text=@"속초역 :\n 강원도 속초군 \n갈 곳:\n설악산 케이블카, 이바이마을";
    }
    if([index isEqualToString:@"춘천"])
    {
        [imageView1 setImage:chunchunImage1];
        [imageView2 setImage:chunchunImage2];
        [imageView3 setImage:chunchunImage3];
        label.text=@"춘천 위치 :\n강원도 춘천시\n 닭갈비 맛집 :\n 춘천통나무집닭갈비, 토담숯불닭갈비,\n원조숲불닭불고기";
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
