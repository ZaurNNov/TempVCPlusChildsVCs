//
//  DetailUserInfoMasterVC.m
//  VKKK
//
//  Created by A1 on 29/09/2018.
//  Copyright © 2018 Zaur Giyasov. All rights reserved.
//

#import "DetailUserInfoMasterVC.h"
#import "Slave1VC.h"
#import "Slave2VC.h"
#import "Slave3VC.h"

@interface DetailUserInfoMasterVC ()

@property (weak, nonatomic) IBOutlet UIView *slave1View;
@property (weak, nonatomic) IBOutlet UIView *slave2View;
@property (weak, nonatomic) IBOutlet UIView *slave3View;


@end

@implementation DetailUserInfoMasterVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupView];
}

-(void)setupView {
    // prepare
    [self addChildViewController:[self slave1VC]];
    [self addChildViewController:[self slave2VC]];
    [self addChildViewController:[self slave3VC]];
}

// MARK: - Prepare Chid VC's
-(Slave1VC *)slave1VC {
    UIStoryboard *st = [UIStoryboard storyboardWithName:@"Slave1VC" bundle: nil];
    Slave1VC *vc = [st instantiateViewControllerWithIdentifier:@"Slave1VC"];
    
    [self addAsChildVCToSlave1View:vc];
    return vc;
}

-(Slave2VC *)slave2VC {
    UIStoryboard *st = [UIStoryboard storyboardWithName:@"Slave2VC" bundle: nil];
    Slave2VC *vc = [st instantiateViewControllerWithIdentifier:@"Slave2VC"];
    
    [self addAsChildVCToSlave2View:vc];
    return vc;
}

-(void)addAsChildVCToSlave1View:(UIViewController *)vc {
    // Add ChildVC
    [self addChildViewController:vc];
    
    // Add ChildView as Subview
    [self.slave1View addSubview:vc.view];
    
    // Configure ChildView
    vc.view.frame = self.slave1View.bounds;
    vc.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    // Notify ChildVC
    [vc didMoveToParentViewController:self];
}

-(void)addAsChildVCToSlave2View:(UIViewController *)vc {
    // Add ChildVC
    [self addChildViewController:vc];
    
    // Add ChildView as Subview
    [self.slave2View addSubview:vc.view];
    
    // Configure ChildView
    vc.view.frame = self.slave2View.bounds;
    vc.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    // Notify ChildVC
    [vc didMoveToParentViewController:self];
}

// CollectionView as CollectionViewController
-(void)addAsChildVCToSlave3View:(UIViewController *)vc {
    // Add ChildVC
    [self addChildViewController:vc];
    
    // Add ChildView as Subview
    [self.slave3View addSubview:vc.view];
    
    // Configure ChildView
    vc.view.frame = self.slave3View.bounds;
    vc.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    // Notify ChildVC
    [vc didMoveToParentViewController:self];
}

-(Slave3VC *)slave3VC {
    UIStoryboard *st = [UIStoryboard storyboardWithName:@"Slave3VC" bundle: nil];
    Slave3VC *vc = [st instantiateViewControllerWithIdentifier:@"Slave3VC"];
    
    [self addAsChildVCToSlave3View:vc];
    return vc;
}

@end
