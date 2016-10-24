//
//  KNViewController.h
//  Nollugallae
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface KNViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource> {
    
    NSArray * data;  // 지역 자료 저장
   
    //UIImage *hanGangImage;
    UIImage *ulsanImage1;
    UIImage *ulsanImage2;
    UIImage *ulsanImage3;
    
    UIImage *busanImage1;
    UIImage *busanImage2;
    UIImage *busanImage3;
    
    UIImage *daeguImage1;
    UIImage *daeguImage2;
    UIImage *daeguImage3;
}




@property (strong, nonatomic) IBOutlet UILabel *label;

@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) IBOutlet UIImageView *imageView1;
@property (strong, nonatomic) IBOutlet UIImageView *imageView2;
@property (strong, nonatomic) IBOutlet UIImageView *imageView3;
- (IBAction)getValue;

@end
