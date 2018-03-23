//
//  TermsViewController.m
//  fbLogin
//
//  Created by sravanthi on 3/13/18.
//  Copyright © 2018 sravanthi. All rights reserved.
//

#import "TermsViewController.h"
#import "AppDelegate.h"
@interface TermsViewController ()

@end

@implementation TermsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _imgTnc= [[UIImageView alloc]init];
    _imgTnc.frame = CGRectMake(0, 65, [[UIScreen mainScreen]bounds].size.width, 300);
    [self.view addSubview:_imgTnc];
    self.imgTnc.image = [UIImage imageNamed:@"terms"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
