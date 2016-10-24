//
//  KGViewController.h
//  Nollugallae
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KGViewController : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource> {
    NSArray * data;  // 지역 자료 저장
    //UIImage *hanGangImage;
    UIImage *hanGangImage1;
    UIImage *hanGangImage2;
    UIImage *hangangImage3;
    
    UIImage *parkImage1;
    UIImage *parkImage2;
    UIImage *parkImage3;
    
    UIImage *towerImage1;
    UIImage *towerImage2;
    UIImage *towerImage3;
}
    

@property (strong, nonatomic) IBOutlet UILabel *label;

@property (strong, nonatomic) IBOutlet UIPickerView *picker;

@property (strong, nonatomic) IBOutlet UIImageView *imageView1;
@property (strong, nonatomic) IBOutlet UIImageView *imageView2;
@property (strong, nonatomic) IBOutlet UIImageView *imageView3;

//@property (strong, nonatomic) IBOutlet UIImageView *hanGangImageView;

- (IBAction)getValue;

@end
