//
//  JBViewController.h
//  Nollugallae
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JBViewController : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource> {
    NSArray * data;  // 지역 자료 저장
    //UIImage *hanGangImage;
    UIImage *hanokImage1;
    UIImage *hanokImage2;
    UIImage *hanokImage3;
    
    UIImage *natureImage1;
    UIImage *natureImage2;
    UIImage *natureImage3;
    
    UIImage *mountainImage1;
    UIImage *mountainImage2;
    UIImage *mountainImage3;
}
@property (strong, nonatomic) IBOutlet UILabel *label;

@property (strong, nonatomic) IBOutlet UIPickerView *picker;

@property (strong, nonatomic) IBOutlet UIImageView *imageView1;

@property (strong, nonatomic) IBOutlet UIImageView *imageView2;
@property (strong, nonatomic) IBOutlet UIImageView *imageView3;

- (IBAction)getValue;

@end
