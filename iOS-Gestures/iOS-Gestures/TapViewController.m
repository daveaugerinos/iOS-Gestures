//
//  TapViewController.m
//  iOS-Gestures
//
//  Created by Dave Augerinos on 2017-02-18.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import "TapViewController.h"

@interface TapViewController ()

@property (strong, nonatomic) UIView *myView;

@end

@implementation TapViewController

- (void)viewDidLoad {
    
    CGFloat width = 100;
    CGFloat height = 100;
    
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds) - width / 2, CGRectGetMidY(self.view.bounds) - height / 2, width, height);
    
    self.myView = [[UIView alloc] initWithFrame:frame];
    
    self.myView.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:self.myView];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped:)];
    
    [self.view addGestureRecognizer:tapGesture];
}

- (void)viewTapped:(UIGestureRecognizer *)sender {
    
    self.myView.backgroundColor = [self.myView.backgroundColor isEqual: [UIColor blueColor]] ? [UIColor orangeColor] : [UIColor blueColor];
}

@end
