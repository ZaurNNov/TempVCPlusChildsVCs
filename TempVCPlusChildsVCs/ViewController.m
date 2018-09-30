//
//  ViewController.m
//  TempVCPlusChildsVCs
//
//  Created by A1 on 29/09/2018.
//  Copyright © 2018 Home.Me. All rights reserved.
//

#import "ViewController.h"
#import "DetailUserInfoMasterVC.h"

@interface ViewController ()
- (IBAction)buttonAction:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)buttonAction:(UIButton *)sender {
    
    [self.navigationController pushViewController:[self prepareNextScreen] animated:YES];
}

-(DetailUserInfoMasterVC *)prepareNextScreen {
    UIStoryboard *st = [UIStoryboard storyboardWithName:@"DetailUserInfo" bundle:nil];
    DetailUserInfoMasterVC *vc = [st instantiateViewControllerWithIdentifier:@"DetailUserInfoMasterVC"];
    return vc;
}


@end
