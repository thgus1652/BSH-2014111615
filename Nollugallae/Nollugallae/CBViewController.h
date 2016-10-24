//
//  CBViewController.h
//  Nollugallae
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CBViewController : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource> {
    NSArray * data;  // 지역 자료 저장
    //UIImage *hanGangImage;
    UIImage *marketImage1;
    UIImage *marketImage2;
    UIImage *marketImage3;
    
    UIImage *lakeImage1;
    UIImage *lakeImage2;
    UIImage *lakeImage3;
    
    UIImage *wallImage1;
    UIImage *wallImage2;
    UIImage *wallImage3;
}
@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UIImageView *imageView3;
@property (strong, nonatomic) IBOutlet UIImageView *imageView2;
@property (strong, nonatomic) IBOutlet UIImageView *imageView1;

@property (strong, nonatomic) IBOutlet UIPickerView *picker;
- (IBAction)getValue;


@end
