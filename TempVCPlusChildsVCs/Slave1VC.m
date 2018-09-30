//
//  Slave1VC.m
//  VKKK
//
//  Created by A1 on 29/09/2018.
//  Copyright © 2018 Zaur Giyasov. All rights reserved.
//

#import "Slave1VC.h"

@interface Slave1VC ()

@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *onlineStatusLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageAndCityLabel;
- (IBAction)detailsButton:(UIButton *)sender;

@end

@implementation Slave1VC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupView];
}

-(void)setupView {
    // prepare view
    [self fakeData];
}

- (IBAction)detailsButton:(UIButton *)sender {
    // to next view
    
}

-(void)fakeData {
    self.nameLabel.text = @"Full name label";
    self.onlineStatusLabel.text = @"user online";
    self.ageAndCityLabel.text = @"48 age, NNovgorod";
    UIImage *photo = [UIImage imageNamed:@"userImageExample"];
    self.photoImageView.image = photo;
}

@end
