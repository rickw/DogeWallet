//
//  AccessViewController.m
//  DWallet
//
//  Created by Rick Windham on 9/30/14.
//  Copyright (c) 2014 Brad Slayter. All rights reserved.
//

#import "AccessViewController.h"
#import "ViewController.h"
@import LocalAuthentication;

@interface AccessViewController ()
@property (assign) BOOL authenticated;
@end

@implementation AccessViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _authenticated = NO;
//    self.edgesForExtendedLayout = NO;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotate {
    return NO;
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setHidden:YES];

}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.navigationController.navigationBar setHidden:NO];
}

- (IBAction)touchIDAction:(id)sender {
    LAContext *myContext = [[LAContext alloc] init];
    NSError *authError = nil;
    NSString *myLocalizedReasonString = @"much authenticate";
    
    if ([myContext canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:&authError]) {
        [myContext evaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics
                  localizedReason:myLocalizedReasonString
                            reply:^(BOOL success, NSError *error) {
                                if (success) {
                                    // User authenticated successfully, take appropriate action
                                    _authenticated = YES;
                                    
                                    dispatch_async(dispatch_get_main_queue(), ^{
                                        [self performSegueWithIdentifier:@"pushViewController" sender:sender];
                                    });
                                } else {
                                    // User did not authenticate successfully, look at error and take appropriate action
                                    _authenticated = NO;
                                    NSLog(@"FAILED");
                                }
                            }];
    } else {
        // Could not evaluate policy; look at authError and present an appropriate message to user
        NSLog(@"no policy");
    }
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
