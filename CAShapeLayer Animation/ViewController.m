//
//  ViewController.m
//  CAShapeLayer Animation
//
//  Created by Ferrakkem on 2/27/17.
//  Copyright © 2017 Ferrakkem. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CAShapeLayer *circle = [CAShapeLayer layer];
    [circle setPath:[[UIBezierPath bezierPathWithOvalInRect:CGRectMake(100, 100, 150, 150)] CGPath]];
    [circle setStrokeColor:[[UIColor blueColor] CGColor]];
    [circle setFillColor:[[UIColor clearColor] CGColor]];
    [[self.view layer] addSublayer:circle];
    
    CABasicAnimation *animationPath = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    animationPath.duration = 1.5f;
    animationPath.fromValue = [NSNumber numberWithFloat:0.0f];
    animationPath.toValue = [NSNumber numberWithFloat:1.0f];
    animationPath.repeatCount = 10;
    animationPath.autoreverses = YES;
    [circle addAnimation:animationPath forKey:@"strokeEnd"];
   
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
