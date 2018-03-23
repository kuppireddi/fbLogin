//
//  AppDelegate.h
//  fbLogin
//
//  Created by sravanthi on 3/13/18.
//  Copyright © 2018 sravanthi. All rights reserved.
//

#import <UIKit/UIKit.h>
@import GoogleSignIn;
@interface AppDelegate : UIResponder <UIApplicationDelegate, GIDSignInDelegate>

@property (strong, nonatomic) UIWindow *window;
@property(strong, nonatomic)UINavigationController *navigation;

@end

