//
//  LoginViewController.h
//  fbLogin
//
//  Created by sravanthi on 3/13/18.
//  Copyright © 2018 sravanthi. All rights reserved.
//

#import "AppDelegate.h"
#import "SuccessViewController.h"
#import "RegisterViewController.h"
#import "TermsViewController.h"
@import GoogleSignIn;
@interface LoginViewController : UIViewController<GIDSignInUIDelegate, GIDSignInDelegate>
{
    int yAxis;
}
@property(nonatomic, strong) UIImageView *img;
@property(nonatomic, strong) UITextField *txtUser;
@property(nonatomic, strong) UITextField *txtPassword;
@property(nonatomic, strong) UIButton *btnLogin;
@property(nonatomic, strong) UIButton * btnReg;
@property(nonatomic, strong) UIButton *loginButton;
@property(nonatomic, strong) UIButton *btnTnc;
@property (nonatomic, strong)UIImageView *imglogin;
@property (nonatomic, strong)UIImageView *imgTnc;
@property(nonatomic, strong)UIButton *btnGoogle;
@end
