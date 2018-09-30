//
//  Slave2VC.m
//  VKKK
//
//  Created by A1 on 29/09/2018.
//  Copyright © 2018 Zaur Giyasov. All rights reserved.
//

#import "Slave2VC.h"
#import "PhotoCollectionCell.h"

@interface Slave2VC ()

@property (weak, nonatomic) IBOutlet UIView *upperView;
@property (weak, nonatomic) IBOutlet UILabel *upperViewLabel;
- (IBAction)buttonAction:(UIButton *)sender;

@property (nonatomic) NSArray *arrayImages;

@end

@implementation Slave2VC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupView];
}

-(void)setupView {
    // prepare view
    self.upperViewLabel.text = @"Очень много фоток!";
}


- (IBAction)buttonAction:(UIButton *)sender {
    printf("Button pressed!");
}
@end
