//
//  SuccessViewController.h
//  fbLogin
//
//  Created by sravanthi on 3/13/18.
//  Copyright © 2018 sravanthi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SuccessViewController : UIViewController
@property(nonatomic, strong)UILabel *lblNam;
@property(nonatomic, strong)UILabel*lblEm;
@property(nonatomic, strong)UILabel *lblPas;
@property(nonatomic, strong)UILabel *lblCon;
@property(nonatomic,strong)UILabel *lblGen;
@property(nonatomic,strong)UILabel *lblPhn;
@property(nonatomic, strong)UITextField *txtNam;
@property(nonatomic, strong)UITextField *txtEm;
@property(nonatomic, strong)UITextField *txtPas;
@property(nonatomic, strong)UITextField *txtCon;
@property(nonatomic,strong)UITextField *txtGen;
@property(nonatomic,strong)UITextField *txtPhn;
@property(nonatomic,strong)NSMutableDictionary *dict;

@end
