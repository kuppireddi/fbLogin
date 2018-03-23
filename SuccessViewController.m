//
//  SuccessViewController.m
//  fbLogin
//
//  Created by sravanthi on 3/13/18.
//  Copyright © 2018 sravanthi. All rights reserved.
//

#import "SuccessViewController.h"
#import "AppDelegate.h"
@interface SuccessViewController ()

@end

@implementation SuccessViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@",_dict);
    [self infoView];
}

-(void)infoView{
    _lblNam = [[UILabel alloc]init];
    _lblNam.frame = CGRectMake(20, 80, [[UIScreen mainScreen]bounds].size.width-40, 35);
    _lblNam.text = @"Name";
    _lblNam.textColor = [UIColor blackColor];
    _lblNam.layer.borderColor = [UIColor grayColor].CGColor;
    [self.view addSubview:_lblNam];
    
    _lblEm = [[UILabel alloc]init];
    _lblEm.frame = CGRectMake(20, 120, [[UIScreen mainScreen]bounds].size.width-40, 35);
    _lblEm.text = @"Email";
    _lblEm.textColor = [UIColor blackColor];
    _lblEm.layer.borderColor = [UIColor grayColor].CGColor;
    [self.view addSubview:_lblEm];
    
    _lblPas = [[UILabel alloc]init];
    _lblPas.frame = CGRectMake(20, 160, [[UIScreen mainScreen]bounds].size.width-40, 35);
    _lblPas.text = @"Password";
    _lblPas.textColor = [UIColor blackColor];
    _lblPas.layer.borderColor = [UIColor grayColor].CGColor;
    [self.view addSubview:_lblPas];
    
    _lblCon = [[UILabel alloc]init];
    _lblCon.frame = CGRectMake(20, 200, [[UIScreen mainScreen]bounds].size.width-40, 35);
    _lblCon.text = @"Confirm Password";
    _lblCon.textColor = [UIColor blackColor];
    _lblCon.layer.borderColor = [UIColor grayColor].CGColor;
    [self.view addSubview:_lblCon];
    
    _lblGen = [[UILabel alloc]init];
    _lblGen.frame = CGRectMake(20, 240, [[UIScreen mainScreen]bounds].size.width-40, 35);
    _lblGen.text = @"Gender";
    _lblGen.textColor = [UIColor blackColor];
    _lblGen.layer.borderColor = [UIColor grayColor].CGColor;
    [self.view addSubview:_lblGen];
    
    _lblPhn = [[UILabel alloc]init];
    _lblPhn.frame = CGRectMake(20, 280, [[UIScreen mainScreen]bounds].size.width-40, 35);
    _lblPhn.text = @"Phone";
    _lblPhn.textColor = [UIColor blackColor];
    _lblPhn.layer.borderColor = [UIColor grayColor].CGColor;
    [self.view addSubview:_lblPhn];
    
    _txtNam = [[UITextField alloc]init];
    _txtNam.frame = CGRectMake([[UIScreen mainScreen]bounds].size.width/2, 80, [[UIScreen mainScreen]bounds].size.width/2-30, 35);
    _txtNam.placeholder = @"Name";
    _txtNam.textColor = [UIColor blackColor];
    _txtNam.backgroundColor = [UIColor lightGrayColor];
    _txtNam.layer.borderColor = [UIColor grayColor].CGColor;
    _txtNam.text = [_dict objectForKey:@"Name"];
    [self.view addSubview:_txtNam];
    
    _txtEm  = [[UITextField alloc]init];
    _txtEm.frame = CGRectMake([[UIScreen mainScreen]bounds].size.width/2, 120, [[UIScreen mainScreen]bounds].size.width/2-30, 35);
    _txtEm.placeholder = @"Email";
    _txtEm.textColor = [UIColor blackColor];
    _txtEm.layer.borderColor = [UIColor grayColor].CGColor;
    _txtEm.backgroundColor = [UIColor lightGrayColor];
    _txtEm.text = [_dict objectForKey:@"Email"];
    [self.view addSubview:_txtEm];
    
    _txtPas = [[UITextField alloc]init];
    _txtPas.frame = CGRectMake([[UIScreen mainScreen]bounds].size.width/2, 160, [[UIScreen mainScreen]bounds].size.width/2-30, 35);
    _txtPas.placeholder = @"Password";
    _txtPas.textColor = [UIColor blackColor];
    _txtPas.layer.borderColor = [UIColor grayColor].CGColor;
    _txtPas.backgroundColor = [UIColor lightGrayColor];
    _txtPas.text = [_dict objectForKey:@"Password"];
    [self.view addSubview:_txtPas];
    
    _txtCon  = [[UITextField alloc]init];
    _txtCon.frame = CGRectMake([[UIScreen mainScreen]bounds].size.width/2, 200, [[UIScreen mainScreen]bounds].size.width/2-30, 35);
    _txtCon.placeholder = @"Confirm Password";
    _txtCon.textColor = [UIColor blackColor];
    _txtCon.layer.borderColor = [UIColor grayColor].CGColor;
    _txtCon.backgroundColor = [UIColor lightGrayColor];
    _txtCon.text = [_dict objectForKey:@"Confirm Password"];
    [self.view addSubview:_txtCon];
    
    _txtGen  = [[UITextField alloc]init];
    _txtGen.frame = CGRectMake([[UIScreen mainScreen]bounds].size.width/2, 240, [[UIScreen mainScreen]bounds].size.width/2-30, 35);
    _txtGen.placeholder = @"Gender";
    _txtGen.textColor = [UIColor blackColor];
    _txtGen.layer.borderColor = [UIColor grayColor].CGColor;
    _txtGen.backgroundColor = [UIColor lightGrayColor];
    _txtGen.text = [_dict objectForKey:@"Gender"];
    [self.view addSubview:_txtGen];
    
    _txtPhn  = [[UITextField alloc]init];
    _txtPhn.frame = CGRectMake([[UIScreen mainScreen]bounds].size.width/2, 280, [[UIScreen mainScreen]bounds].size.width/2-30, 35);
    _txtPhn.placeholder = @"Phone number";
    _txtPhn.textColor = [UIColor blackColor];
    _txtPhn.layer.borderColor = [UIColor grayColor].CGColor;
    _txtPhn.backgroundColor = [UIColor lightGrayColor];
    _txtPhn.text = [_dict objectForKey:@"Phone"];
    [self.view addSubview:_txtPhn];
}
- (void)signIn:(GIDSignIn *)signIn
presentViewController:(UIViewController *)viewController {
    [self presentViewController:viewController animated:YES completion:nil];
}

// Dismiss the "Sign in with Google" view
- (void)signIn:(GIDSignIn *)signIn
dismissViewController:(UIViewController *)viewController {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)signIn:(GIDSignIn *)signIn
didSignInForUser:(GIDGoogleUser *)user
     withError:(NSError *)error {
    // Perform any operations on signed in user here.
    NSString *Name = self.txtNam.text;
    NSString *Email = self.txtEm.text;
    NSString *Password = self.txtPas.text;
    NSString *ConPas = self.txtCon.text;
    NSString *Gender = self.txtGen.text;
    NSString *Phn = self.txtPhn.text;
    BOOL hashImage=user.profile.hasImage;
    
    NSString *imgUrl=nil;
    CGSize thumbSize=CGSizeMake(100,100);
    if ([GIDSignIn sharedInstance].currentUser.profile.hasImage)
    {
        NSUInteger dimension = round(thumbSize.width * [[UIScreen mainScreen] scale]);
        NSURL *imageURL = [user.profile imageURLWithDimension:dimension];
        NSLog(@"image url=%@",imageURL);
        imgUrl = [imageURL absoluteString];
    }
    NSMutableDictionary *dict = [[NSMutableDictionary alloc]init];
    [dict setObject:Name forKey:@"Name"];
    [dict setObject:Email forKey:@"Email"];
    [dict setObject:Password forKey:@"Password"];
    [dict setObject:ConPas forKey:@"Confirm Password"];
    [dict setObject:Gender forKey:@"Gender"];
    [dict setObject:Phn forKey:@"Phone"];
    [dict setObject:imgUrl forKey:@"imgUrl"];
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:dict];
    [[NSUserDefaults standardUserDefaults] setObject:data forKey:@"customerData"];
    [[NSUserDefaults standardUserDefaults]synchronize];
    
}
- (void)signIn:(GIDSignIn *)signIn
didDisconnectWithUser:(GIDGoogleUser *)user
     withError:(NSError *)error {
    // Perform any operations when the user disconnects from app here.
    // ...
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
