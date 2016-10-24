//
//  JNViewController.h
//  Nollugallae
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JNViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource> {
    NSArray * data;  // 지역 자료 저장
    //UIImage *hanGangImage;
    UIImage *gwangjuImage1;
    UIImage *gwangjuImage2;
    UIImage *gwangjuImage3;
    
    UIImage *sunchunImage1;
    UIImage *sunchunImage2;
    UIImage *sunchunImage3;
    
    UIImage *yeosuImage1;
    UIImage *yeosuImage2;
    UIImage *yeosuImage3;
}


@property (strong, nonatomic) IBOutlet UIPickerView *picker;

@property (strong, nonatomic) IBOutlet UIImageView *imageView1;
@property (strong, nonatomic) IBOutlet UIImageView *imageView2;
@property (strong, nonatomic) IBOutlet UIImageView *imageView3;
@property (strong, nonatomic) IBOutlet UILabel *label;
- (IBAction)getValue;



@end
