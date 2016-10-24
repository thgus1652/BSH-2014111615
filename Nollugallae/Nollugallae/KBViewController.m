//
//  KBViewController.m
//  Nollugallae
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "KBViewController.h"

@interface KBViewController ()

@end

@implementation KBViewController
@synthesize picker;
@synthesize imageView1,imageView2,imageView3;
@synthesize label;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    data = [[NSArray alloc] initWithObjects:@"안동",@"포항",@"경주", nil];
    andongImage1 = [UIImage imageNamed:@"andong1.jpg"];
    andongImage2 = [UIImage imageNamed:@"andong2.jpg"];
    andongImage3 = [UIImage imageNamed:@"andong3.jpg"];
    
    pohangImage1 = [UIImage imageNamed:@"pohang1.jpg"];
    pohangImage2 = [UIImage imageNamed:@"pohang2.jpg"];
    pohangImage3 = [UIImage imageNamed:@"pohang3.jpg"];
    
    sinlaImage1 = [UIImage imageNamed:@"sinla1.jpg"];
    sinlaImage2 = [UIImage imageNamed:@"sinla2.jpg"];
    sinlaImage3 = [UIImage imageNamed:@"sinla3.jpg"];

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
    
    if([index isEqualToString:@"안동"])
    {
        [imageView1 setImage:andongImage1];
        [imageView2 setImage:andongImage2];
        [imageView3 setImage:andongImage3];
        
        label.text = @"안동 위치 :\n경상북도 안동군 \n 안동찜닭 맛집:\n촌닭, 종가찜닭, 안동총각찜닭";
        
    }
    if([index isEqualToString:@"포항"])
    {
        [imageView1 setImage:pohangImage1];
        [imageView2 setImage:pohangImage2];
        [imageView3 setImage:pohangImage3];
        label.text=@"포항 위치 :\n 경상북도 포항시\n갈 곳:\n간절곶, 죽도시장, 오어사";
    }
    if([index isEqualToString:@"경주"])
    {
        [imageView1 setImage:sinlaImage1];
        [imageView2 setImage:sinlaImage2];
        [imageView3 setImage:sinlaImage3];
        label.text=@"경주 위치 :\n경상북도 경주시\n갈 곳 :\n첨성대, 안압지, 불국사";
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
