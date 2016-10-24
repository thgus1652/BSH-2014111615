//
//  CNViewController.h
//  Nollugallae
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CNViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource> {
    NSArray * data;  // 지역 자료 저장
    //UIImage *hanGangImage;
    UIImage *daejunImage1;
    UIImage *daejunImage2;
    UIImage *daejunImage3;
    
    UIImage *daechunImage1;
    UIImage *daechunImage2;
    UIImage *daechunImage3;
    
    UIImage *taeanImage1;
    UIImage *taeanImage2;
    UIImage *taeanImage3;
    
}






@property (strong, nonatomic) IBOutlet UIPickerView *picker;

@property (strong, nonatomic) IBOutlet UIImageView *imageView1;
@property (strong, nonatomic) IBOutlet UIImageView *imageView2;
@property (strong, nonatomic) IBOutlet UIImageView *imageView3;
@property (strong, nonatomic) IBOutlet UILabel *label;
- (IBAction)getValue;
@end
