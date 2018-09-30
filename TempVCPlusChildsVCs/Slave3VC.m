//
//  Slave3VC.m
//  TempVCPlusChildsVCs
//
//  Created by A1 on 30/09/2018.
//  Copyright © 2018 Home.Me. All rights reserved.
//

#import "Slave3VC.h"
#import "Slave3CollectionViewCell.h"

@interface Slave3VC ()

@property (nonatomic) NSArray *dataObjectArrayForThisCollectionView;

@end

@implementation Slave3VC

int counts = 20;

- (NSArray *)prepareImagesArray {
    NSMutableArray *fakeImages = [[NSMutableArray alloc] initWithCapacity:counts];
    
    for (int i = 0; i < counts; i++) {
        if (i % 2 == 0) {
            UIImage *img = [UIImage imageNamed:@"Z.png"];
            [fakeImages addObject:img];
        } else {
            UIImage *img = [UIImage imageNamed:@"wideImage.png"];
            [fakeImages addObject:img];
        }
    }
    
    return fakeImages.copy;
}

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataObjectArrayForThisCollectionView = [self prepareImagesArray];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
//    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of items
    return self.dataObjectArrayForThisCollectionView.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    Slave3CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
//    UIImageView *imageView = [[UIImageView alloc] initWithFrame:cell.frame];
//    imageView.image = self.dataObjectArrayForThisCollectionView[indexPath.row];
    
    cell.imageViewForCell.image = self.dataObjectArrayForThisCollectionView[indexPath.row];
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
