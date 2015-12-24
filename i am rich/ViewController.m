//
//  ViewController.m
//  i am rich
//
//  Created by Apple on 12/23/15.
//  Copyright (c) 2015 AMOSC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *iamrich;
@property (weak, nonatomic) IBOutlet UIImageView *ruby;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.iamrich.alpha = 0;
    self.ruby.alpha = 0;
}
- (void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [UIView animateWithDuration:4 animations:^{
        self.ruby.alpha = 1;
        
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:3 animations:^{
            self.iamrich.center =  CGPointMake(self.iamrich.center.x, 360);
            self.iamrich.alpha = 1;
        }];
    }];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

@end
