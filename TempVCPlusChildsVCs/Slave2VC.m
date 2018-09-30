//
//  Slave2VC.m
//  VKKK
//
//  Created by A1 on 29/09/2018.
//  Copyright © 2018 Zaur Giyasov. All rights reserved.
//

#import "Slave2VC.h"
#import "PhotoCollectionCell.h"

@interface Slave2VC () <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UIView *upperView;
@property (weak, nonatomic) IBOutlet UIView *bottomView;
@property (weak, nonatomic) IBOutlet UICollectionView *imagesCollectionView;
@property (weak, nonatomic) IBOutlet UILabel *upperViewLabel;

@property (nonatomic) NSArray *arrayImages;

@end

@implementation Slave2VC

int count = 10;
static NSString * const CellId = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupView];
}

-(void)setupView {
    // prepare view
    [self fakeData];
}


-(void)fakeData {
    self.arrayImages = [self prepareImagesArray];
    // print - check
    NSLog(@"%@", self.arrayImages);
    self.upperViewLabel.text = [NSString stringWithFormat:@"%lu images", (unsigned long)self.arrayImages.count];
    
    self.imagesCollectionView.delegate = self;
    self.imagesCollectionView.dataSource = self;
//    [self.imagesCollectionView registerClass:[PhotoCollectionCell class] forCellWithReuseIdentifier:CellId];
    
}

- (NSArray *)prepareImagesArray {
//    int count = 10;
    NSMutableArray *fakeImages = [[NSMutableArray alloc] initWithCapacity:count];
    
    for (int i = 0; i < count; i++) {
        UIImage *img = [UIImage imageNamed:@"Z.png"];
        [fakeImages addObject:img];
    }
    
    return fakeImages.copy;
}

// MARK: - CollectionView methods

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    PhotoCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellId forIndexPath:indexPath];
    
    UIImage *image = self.arrayImages[indexPath.row];
    
    cell.photoImageView.image = image;
    return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.arrayImages.count;
}


@end
