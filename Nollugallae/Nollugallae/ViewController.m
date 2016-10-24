//
//  ViewController.m
//  Nollugallae
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "ViewController.h"
#import "JBViewController.h"//전라북도
#import "JNViewController.h"//전라남도
#import "CNViewController.h"//충청남도
#import "CBViewController.h"//충청북도
#import "KGViewController.h"//경기도
#import "KBViewController.h"//경상북도
#import "KNViewController.h"//경상남도
#import "JJViewController.h"//제주도
#import "KWViewController.h"//강원도
#import "AddViewController.h"//퀴즈 페이지

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"jbView"]){//전라북도
        JBViewController *jb = [segue destinationViewController];
        jb.title=@"전라북도";
    }
    if([segue.identifier isEqualToString:@"jnView"]){//전라남도
        JNViewController *jn = [segue destinationViewController];
        jn.title=@"전라남도";
    }
    if([segue.identifier isEqualToString:@"cnView"]){//충청남도
        CNViewController *cn = [segue destinationViewController];
        cn.title=@"충청남도";
    }
    if([segue.identifier isEqualToString:@"cbView"]){//충청북도
        CBViewController *cb = [segue destinationViewController];
        cb.title=@"충청북도";
    }
    if([segue.identifier isEqualToString:@"kgView"]){//경기도
        KGViewController *kg = [segue destinationViewController];
        kg.title=@"경기도";
    }
    if([segue.identifier isEqualToString:@"kbView"]){//경상북도
        KBViewController *kb = [segue destinationViewController];
        kb.title=@"경상북도";
    }
    if([segue.identifier isEqualToString:@"knView"]){//경상남도
        KNViewController *kn = [segue destinationViewController];
        kn.title=@"경상남도";
    }
    if([segue.identifier isEqualToString:@"jjView"]){//제주도
        JJViewController *jj = [segue destinationViewController];
        jj.title=@"제주도";
    }
    if([segue.identifier isEqualToString:@"kwView"]){//강원도
        KWViewController *kw = [segue destinationViewController];
        kw.title=@"강원도";
    }
    if([segue.identifier isEqualToString:@"addView"]){//놀러갈래 추천
        KWViewController *cc = [segue destinationViewController];
        cc.title=@"놀러갈래 추천";
    }

}

@end
