//
//  ViewsTableViewController.m
//  Semana3
//
//  Created by Carlos Roig Salvador on 16/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import "ViewsTableViewController.h"
#import "DetailsViewsViewController.h"

@interface ViewsTableViewController ()

@end

@implementation ViewsTableViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIBarButtonItem *closeBtn = [[UIBarButtonItem alloc] initWithTitle:@"X" style:UIBarButtonItemStyleBordered target:self action:@selector(closeTableView)];
    self.navigationItem.leftBarButtonItem = closeBtn;
}

#pragma mark - Action Methods

- (void)closeTableView {
    [self dismissViewControllerAnimated:YES completion:nil];
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    NSIndexPath *index  = [self.tableView indexPathForCell:sender];
    DetailsViewsViewController *vc = [segue destinationViewController];
    NSLog(@"Index? %d", index.row);
    vc.indexExample = index.row;
    vc.title = [sender textLabel].text;
}


@end
