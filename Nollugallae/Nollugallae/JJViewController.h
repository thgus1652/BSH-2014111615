//
//  JJViewController.h
//  Nollugallae
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JJViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource> {
    NSArray * data;  // 지역 자료 저장
    //UIImage *hanGangImage;
    UIImage *beachImage1;
    UIImage *beachImage2;
    UIImage *beachImage3;
    
    UIImage *islandImage1;
    UIImage *islandImage2;
    UIImage *islandImage3;
    
    UIImage *sungImage1;
    UIImage *sungImage2;
    UIImage *sungImage3;
}






@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) IBOutlet UIImageView *imageView1;
@property (strong, nonatomic) IBOutlet UIImageView *imageView2;
@property (strong, nonatomic) IBOutlet UIImageView *imageView3;
@property (strong, nonatomic) IBOutlet UILabel *label;
- (IBAction)getValue;

@end
