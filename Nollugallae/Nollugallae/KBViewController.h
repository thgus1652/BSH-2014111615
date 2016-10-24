//
//  KBViewController.h
//  Nollugallae
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KBViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource> {
    NSArray * data;  // 지역 자료 저장
    //UIImage *hanGangImage;
    UIImage *andongImage1;
    UIImage *andongImage2;
    UIImage *andongImage3;
    
    UIImage *pohangImage1;
    UIImage *pohangImage2;
    UIImage *pohangImage3;
    
    UIImage *sinlaImage1;
    UIImage *sinlaImage2;
    UIImage *sinlaImage3;
}







@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) IBOutlet UIImageView *imageView1;
@property (strong, nonatomic) IBOutlet UIImageView *imageView2;
@property (strong, nonatomic) IBOutlet UIImageView *imageView3;

@property (strong, nonatomic) IBOutlet UILabel *label;
- (IBAction)getValue;
@end
