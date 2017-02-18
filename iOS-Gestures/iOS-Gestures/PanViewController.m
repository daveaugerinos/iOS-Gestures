//
//  PanViewController.m
//  iOS-Gestures
//
//  Created by Dave Augerinos on 2017-02-18.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()

@end

@implementation PanViewController

- (IBAction)redViewPanned:(UIPanGestureRecognizer *)sender {
    
//    CGPoint locationInView = [sender locationInView:self.view];
//    sender.view.center = locationInView;

    CGPoint translationInView = [sender translationInView:self.view];
    
    CGPoint oldCentre = sender.view.center;
    CGPoint newCentre = CGPointMake(oldCentre.x + translationInView.x, oldCentre.y + translationInView.y);
    sender.view.center = newCentre;
    [sender setTranslation:CGPointZero inView:self.view];
}


@end
