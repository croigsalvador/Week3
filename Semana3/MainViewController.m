//
//  MainViewController.m
//  Semana3
//
//  Created by Carlos Roig Salvador on 16/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import "MainViewController.h"

@implementation MainViewController

- (IBAction)buttonPressed:(UIButton *)sender {
    UIStoryboard *drawingSB;
    UINavigationController *nav;
    if (sender.tag == 1) {
        drawingSB = [UIStoryboard storyboardWithName:@"View" bundle:[NSBundle mainBundle]];
        nav = [drawingSB instantiateViewControllerWithIdentifier:@"ViewsNav"];
        [self presentViewController:nav animated:YES completion:nil];
    }

}

@end
