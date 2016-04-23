//
//  ViewController.m
//  ZHNframeLayout
//
//  Created by zhn on 16/4/22.
//  Copyright © 2016年 zhn. All rights reserved.
//

#import "ViewController.h"
#import "UIView+ZHNframeLayout.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIView * tempView = [[UIView alloc]init];
    [self.view addSubview:tempView];
    tempView.backgroundColor = [UIColor redColor];
    
    [tempView ZHN_makeFrame:^(ZHNframeLayoutMaker * maker) {
        
//        maker.left.eaqualTo(self.view.zhn_superLeft).withOffset(10);
//        maker.right.eaqualTo(self.view.zhn_superRight).withOffset(-10);
//        maker.top.eaqualTo(self.view.zhn_superTop).withOffset(10);
//        maker.bottom.eaqualTo(self.view.zhn_superBottom).withOffset(-100);
        
//        maker.centerX.eaqualTo(self.view.zhn_centerX).withOffset(0);
//        maker.centerY.eaqualTo(self.view.zhn_centerY).withOffset(0);
//        maker.weidth.zhn_eaqualTo(100);
//        maker.height.zhn_eaqualTo(100);
        
        
        maker.centerX.eaqualTo(self.view.zhn_centerX).withOffset(0);
        maker.top.eaqualTo(self.view.zhn_superTop).withOffset(20);
        maker.weidth.zhn_eaqualTo(100);
        maker.height.zhn_eaqualTo(100);
        
//        maker.height.zhn_eaqualTo(100);
//        maker.center.eaqualTo(self.view);
//        maker.weidth.zhn_eaqualTo(@200);
        
    }];
    
    
    UIView * newView = [[UIView alloc]init];
    [self.view addSubview:newView];
    newView.backgroundColor = [UIColor blueColor];
    [newView ZHN_makeFrame:^(ZHNframeLayoutMaker *maker) {
        
        maker.left.eaqualTo(tempView.zhn_left).withOffset(100);
        maker.top.eaqualTo(tempView.zhn_top).withOffset(100);
        maker.weidth.zhn_eaqualTo(100);
        maker.height.zhn_eaqualTo(100);
    }];
     

     
     
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
