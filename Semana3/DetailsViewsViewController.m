//
//  DetailsViewsViewController.m
//  Semana3
//
//  Created by Carlos Roig Salvador on 16/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import "DetailsViewsViewController.h"

@interface DetailsViewsViewController ()

@end

@implementation DetailsViewsViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self switchInIndexNumber];
}


- (void)switchInIndexNumber {
    switch (self.indexExample) {
        case 0:
            [self example1];
            break;
        case 1:
            [self example2];
            break;
        case 2:
            [self example3];
            break;
    }
}


- (void)example1 {
    CGRect firstViewFrame = CGRectMake(100.0, 100.0, 100.0, 200.0);
    UIView *firstView = [[UIView alloc] initWithFrame:firstViewFrame];
    firstView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:firstView];
    
    CGRect greenFrame = CGRectInset(firstView.bounds, 10, 10);
    UIView *secondView = [[UIView alloc] initWithFrame:greenFrame];
    secondView.backgroundColor = [UIColor greenColor];
    [firstView addSubview:secondView];
}
- (void)example2 {
    NSLog(@" Index ejemplo2 %d", self.indexExample);

}
- (void)example3 {
    NSLog(@" Index ejemplo3 %d", self.indexExample);

}


@end
