//
//  KWViewController.h
//  Nollugallae
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KWViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource> {
    NSArray * data;  // 지역 자료 저장
    //UIImage *hanGangImage;
    UIImage *chunchunImage1;
    UIImage *chunchunImage2;
    UIImage *chunchunImage3;
    
    UIImage *daeImage1;
    UIImage *daeImage2;
    UIImage *daeImage3;
    
    UIImage *sokchoImage1;
    UIImage *sokchoImage2;
    UIImage *sokchoImage3;

}
- (IBAction)getValue;
@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) IBOutlet UIImageView *imageView1;
@property (strong, nonatomic) IBOutlet UIImageView *imageView2;
@property (strong, nonatomic) IBOutlet UIImageView *imageView3;
@property (strong, nonatomic) IBOutlet UILabel *label;

@end
