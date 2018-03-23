//
//  RegisterViewController.m
//  fbLogin
//
//  Created by sravanthi on 3/13/18.
//  Copyright © 2018 sravanthi. All rights reserved.
//

#import "RegisterViewController.h"
#import "AppDelegate.h"
@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _txtNam = [[UITextField alloc]init];
    _txtNam.frame = CGRectMake(30, 120, [[UIScreen mainScreen]bounds].size.width-60, 35);
    _txtNam.placeholder = @"Name";
    _txtNam.textColor = [UIColor blackColor];
    _txtNam.backgroundColor = [UIColor lightGrayColor];
    _txtNam.layer.borderColor = [UIColor grayColor].CGColor;
    [self.view addSubview:_txtNam];
    
    _txtEm  = [[UITextField alloc]init];
    _txtEm.frame = CGRectMake(30, 170, [[UIScreen mainScreen]bounds].size.width-60, 35);
    _txtEm.placeholder = @"Email";
    _txtEm.textColor = [UIColor blackColor];
    _txtEm.layer.borderColor = [UIColor grayColor].CGColor;
    _txtEm.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:_txtEm];
    
    _txtPas = [[UITextField alloc]init];
    _txtPas.frame = CGRectMake(30, 220, [[UIScreen mainScreen]bounds].size.width-60, 35);
    _txtPas.placeholder = @"Password";
    _txtPas.textColor = [UIColor blackColor];
    _txtPas.layer.borderColor = [UIColor grayColor].CGColor;
    _txtPas.backgroundColor = [UIColor lightGrayColor];
    [_txtPas setSecureTextEntry:YES];
    [self.view addSubview:_txtPas];
    
    _txtCon  = [[UITextField alloc]init];
    _txtCon.frame = CGRectMake(30, 270, [[UIScreen mainScreen]bounds].size.width-60, 35);
    _txtCon.placeholder = @"Confirm Password";
    _txtCon.textColor = [UIColor blackColor];
    _txtCon.layer.borderColor = [UIColor grayColor].CGColor;
    _txtCon.backgroundColor = [UIColor lightGrayColor];
    [_txtCon setSecureTextEntry:YES];
    [self.view addSubview:_txtCon];
    
    _txtGen  = [[UITextField alloc]init];
    _txtGen.frame = CGRectMake(30, 320, [[UIScreen mainScreen]bounds].size.width-60, 35);
    _txtGen.placeholder = @"Gender";
    _txtGen.textColor = [UIColor blackColor];
    _txtGen.layer.borderColor = [UIColor grayColor].CGColor;
    _txtGen.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:_txtGen];
    
    _txtPhn  = [[UITextField alloc]init];
    _txtPhn.frame = CGRectMake(30, 370, [[UIScreen mainScreen]bounds].size.width-60, 35);
    _txtPhn.placeholder = @"Phone number";
    _txtPhn.textColor = [UIColor blackColor];
    _txtPhn.layer.borderColor = [UIColor grayColor].CGColor;
    _txtPhn.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:_txtPhn];
    
    _btnRe = [[UIButton alloc]init];
    _btnRe.frame = CGRectMake(45, 420, [[UIScreen mainScreen]bounds].size.width-90, 35);
    [_btnRe setTitle:@"REGISTER" forState:UIControlStateNormal];
    [_btnRe addTarget:self action:@selector(btnRegiClicked) forControlEvents:UIControlEventTouchUpInside];
    _btnRe.backgroundColor = [UIColor blueColor];
    [self.view addSubview:_btnRe];
    
}

-(void)btnRegiClicked{
    if([_txtNam.text length] < 1){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Error!" message:@"Please enter your name" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
        [alert show];
        return;
    }
    if([_txtEm.text length] < 1){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Error!" message:@"Please enter your email" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
        [alert show];
        return;
    }
    if([_txtPas.text length]<1){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Alert!" message:@"Please enter your password" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
        [alert show];
        return;
    }
    
    if([_txtCon.text length]<1){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Alert!" message:@"Please confirm your password" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
        [alert show];
        return;
    }
    if([_txtGen.text length]<1){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Alert!" message:@"Please enter your gender" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
        [alert show];
        return;
    }
    if([_txtPhn.text length]<1){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Alert!" message:@"Please enter your phone number" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
        [alert show];
        return;
    }
    if(![self.txtPas.text isEqualToString:self.txtCon.text]){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Error!" message:@"Make sure that both password's match" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
        [alert show];
        return;
    }
    NSMutableDictionary *dict = [[NSMutableDictionary alloc]init];
    [dict setObject:_txtNam.text forKey:@"Name"];
    [dict setObject:_txtEm.text forKey:@"Email"];
    [dict setObject:_txtPas.text forKey:@"Password"];
    [dict setObject:_txtCon.text forKey:@"Confirm Password"];
    [dict setObject:_txtGen.text forKey:@"Gender"];
    [dict setObject:_txtPhn.text forKey:@"Phone"];
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:dict];
    
    [[NSUserDefaults standardUserDefaults] setObject:data forKey:@"userData"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
//    NSData *data1 = [[NSUserDefaults standardUserDefaults] objectForKey:@"userData"];
//
//    NSMutableDictionary *dic = [NSKeyedUnarchiver unarchiveObjectWithData:data1];
//    NSLog(@"%@",dic);

    
    SuccessViewController *success = [[SuccessViewController alloc]initWithNibName:@"SuccessViewController" bundle:nil];
    success.dict = dict;
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
