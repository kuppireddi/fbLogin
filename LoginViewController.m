//
//  LoginViewController.m
//  fbLogin
//
//  Created by sravanthi on 3/13/18.
//  Copyright © 2018 sravanthi. All rights reserved.
//

#import "LoginViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
//@import GoogleSignIn;
@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    yAxis = 65;
    _img = [[UIImageView alloc]init];
    _img.frame = CGRectMake(0, yAxis, [[UIScreen mainScreen]bounds].size.width, 120);
    self.img.image = [UIImage imageNamed:@"fb"];
    [self.view addSubview:_img];
    yAxis += 135;
    _txtUser = [[UITextField alloc]init];
    _txtUser.frame = CGRectMake(20, yAxis,[[UIScreen mainScreen]bounds].size.width-40, 30);
    _txtUser.placeholder = @"User name";
    _txtUser.layer.borderColor = [UIColor blackColor].CGColor;
    _txtUser.backgroundColor = [UIColor lightGrayColor];
    _txtUser.textColor = [UIColor blackColor];
    [_txtUser setKeyboardType:UIKeyboardTypeDefault];
    [self.view addSubview:_txtUser];
    yAxis += 50;
    _txtPassword = [[UITextField alloc]init];
    _txtPassword.frame = CGRectMake(20, yAxis,[[UIScreen mainScreen]bounds].size.width-40, 30);
    _txtPassword.placeholder = @"Password";
    _txtPassword.layer.borderColor = [UIColor blackColor].CGColor;
    _txtPassword.backgroundColor = [UIColor lightGrayColor];
    _txtPassword.textColor = [UIColor blackColor];
    [_txtPassword setSecureTextEntry:YES];
    [_txtPassword setKeyboardType:UIKeyboardTypeDefault];
    [self.view addSubview:_txtPassword];
    yAxis +=70;
    _btnLogin = [[UIButton alloc]init];
    _btnLogin.frame = CGRectMake(40, yAxis,[[UIScreen mainScreen]bounds].size.width-80, 30);
    [_btnLogin setTitle:@"Login" forState:UIControlStateNormal];
    [_btnLogin addTarget:self action:@selector(btnLoginClicked) forControlEvents:UIControlEventTouchUpInside];
    _btnLogin.backgroundColor = [UIColor blueColor];
    [self.view addSubview:_btnLogin];
    yAxis += 40;
    _btnReg = [[UIButton alloc]init];
    _btnReg.frame = CGRectMake(40, yAxis,[[UIScreen mainScreen]bounds].size.width-80, 30);
    [_btnReg setTitle:@"First time user? Register" forState:UIControlStateNormal];
    [_btnReg addTarget:self action:@selector(btnRegisterClicked) forControlEvents:UIControlEventTouchUpInside];
    _btnReg.backgroundColor = [UIColor blueColor];
    [self.view addSubview:_btnReg];
    yAxis += 40;
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    // Optional: Place the button in the center of your view.
    loginButton.center = self.view.center;
    loginButton.frame = CGRectMake(40, yAxis,[[UIScreen mainScreen]bounds].size.width-80, 30);
    [loginButton setTitle:@"Login with Facebook" forState:UIControlStateNormal];
    [loginButton addTarget:self action:@selector(btnfacebookClicked) forControlEvents:UIControlEventTouchUpInside];
    loginButton.backgroundColor = [UIColor blueColor];
    [self.view addSubview:loginButton];
    if ([FBSDKAccessToken currentAccessToken]) {
        // User is logged in, do work such as go to next view controller.
        
    }
    loginButton.readPermissions = @[@"public_profile", @"email"];
    yAxis += 40;
    _btnGoogle = [[UIButton alloc]init];
    _btnGoogle.frame = CGRectMake(40, yAxis, [[UIScreen mainScreen]bounds].size.width-80, 30);
    [_btnGoogle setTitle:@"Login With Google" forState:UIControlStateNormal];
    [_btnGoogle addTarget:self action:@selector(btnGoogleClicked) forControlEvents:UIControlEventTouchUpInside];
    _btnGoogle.backgroundColor = [UIColor redColor];
    [self.view addSubview:_btnGoogle];
    
    _btnTnc = [[UIButton alloc]init];
    _btnTnc.frame = CGRectMake(40, [[UIScreen mainScreen]bounds].size.height-40,[[UIScreen mainScreen]bounds].size.width-80, 30);
    [_btnTnc setTitle:@"Terms and Conditions" forState:UIControlStateNormal];
    [_btnTnc addTarget:self action:@selector(btnTncClicked) forControlEvents:UIControlEventTouchUpInside];
    _btnTnc.backgroundColor = [UIColor grayColor];
    [self.view addSubview:_btnTnc];
}

-(void)btnLoginClicked {
    if([_txtUser.text length] < 1){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Error!" message:@"Please enter your user name" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
        [alert show];
        return;
    }
    if([_txtPassword.text length]<1){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Alert!" message:@"Please enter your password" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
        [alert show];
        return;
    }
    
//    if(![_txtUser.text isEqualToString:@"Sravanthi"]){
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error!" message:@"Invalid username" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
//        [alert show];
//        return;
//    }
//
//    if(![_txtPassword.text isEqualToString:@"1234"]){
//        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Error!" message:@"Invalid passoword" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
//        [alert show];
//        return;
//    }
    
    TermsViewController *terms =[[TermsViewController alloc]initWithNibName:@"TermsViewController" bundle:nil];
    self.imgTnc.image = [UIImage imageNamed:@"terms"];
    [self.navigationController pushViewController:terms animated:YES];
}

-(void)btnTncClicked{
    
    TermsViewController *terms =[[TermsViewController alloc]initWithNibName:@"TermsViewController" bundle:nil];
    self.imgTnc.image = [UIImage imageNamed:@"terms"];
    [self.navigationController pushViewController:terms animated:YES];
}
-(void)btnRegisterClicked{
    
    RegisterViewController *regi = [[RegisterViewController alloc]initWithNibName:@"RegisterViewController" bundle:nil];
    
    [self.navigationController pushViewController:regi animated:YES];
}
-(void)btnfacebookClicked{
    
}
//- (void)signIn:(GIDSignIn *)signIn
//presentViewController:(UIViewController *)viewController {
//    [self presentViewController:viewController animated:YES completion:nil];
//}
//
//// Dismiss the "Sign in with Google" view
//- (void)signIn:(GIDSignIn *)signIn
//dismissViewController:(UIViewController *)viewController {
//    [self dismissViewControllerAnimated:YES completion:nil];
//}
//- (void)signIn:(GIDSignIn *)signIn
//didSignInForUser:(GIDGoogleUser *)user
//     withError:(NSError *)error {
//    // Perform any operations on signed in user here.
//    NSString *Name = self.Name;
//    NSString *Email = @"Email";
//    NSString *Password = @"Password";
//    NSString *ConPas = @"ConfirmPassword";
//    NSString *Gender = @"Gender";
//    NSString *Phn = @"Phone";
//    BOOL hashImage=user.profile.hasImage;
//    
//    NSString *imgUrl=nil;
//    CGSize thumbSize=CGSizeMake(100,100);
//    if ([GIDSignIn sharedInstance].currentUser.profile.hasImage)
//    {
//        NSUInteger dimension = round(thumbSize.width * [[UIScreen mainScreen] scale]);
//        NSURL *imageURL = [user.profile imageURLWithDimension:dimension];
//        NSLog(@"image url=%@",imageURL);
//        imgUrl = [imageURL absoluteString];
//    }
//    NSMutableDictionary *dict = [[NSMutableDictionary alloc]init];
//    [dict setObject:Name forKey:@"Name"];
//    [dict setObject:Email forKey:@"Email"];
//    [dict setObject:Password forKey:@"Password"];
//    [dict setObject:ConPas forKey:@"Confirm Password"];
//    [dict setObject:Gender forKey:@"Gender"];
//    [dict setObject:Phn forKey:@"Phone"];
//    [dict setObject:imgUrl forKey:@"imgUrl"];
//    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:dict];
//    [[NSUserDefaults standardUserDefaults] setObject:data forKey:@"customerData"];
//    [[NSUserDefaults standardUserDefaults]synchronize];
//    SuccessViewController *success = [[SuccessViewController alloc]initWithNibName:@"SuccessViewController" bundle:nil];
//    success.dict = dict;
//    [self.navigationController pushViewController:success animated:YES];
//    
//}
//- (void)signIn:(GIDSignIn *)signIn
//didDisconnectWithUser:(GIDGoogleUser *)user
//     withError:(NSError *)error {
//    // Perform any operations when the user disconnects from app here.
//    // ...
//}
-(void)btnGoogleClicked{
    [GIDSignIn sharedInstance].uiDelegate = self;
    [GIDSignIn sharedInstance].delegate = self;
    [GIDSignIn sharedInstance].clientID = @"351243380808-b9sgebjduanvae13059sob30ideiv6js.apps.googleusercontent.com";
    [[GIDSignIn sharedInstance] signIn];
    SuccessViewController *success = [[SuccessViewController alloc]initWithNibName:@"SuccessViewController" bundle:nil];
    [self.navigationController pushViewController:success animated:YES];
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
