//
//  ViewController.m
//  28-手势识别器( UITapGestureRecognizer)
//
//  Created by Mac on 14-10-15.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIGestureRecognizerDelegate>

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self tapSetup];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





-(void)tapSetup{
 
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(btnClick)];
    
    tap.delegate = self;
    
    [self.meinanzi addGestureRecognizer:tap];
}

-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{

    return  YES;
}




-(void)tapSetup2{
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(btnClick)];
    
    tap.numberOfTouchesRequired =2 ;
    
    tap.numberOfTapsRequired = 2 ;
    
    tap.delegate = self;
    
    [self.meinanzi addGestureRecognizer:tap];
}



-(void)btnClick{


    NSLog(@"美男子被点击了------");

}


@end
