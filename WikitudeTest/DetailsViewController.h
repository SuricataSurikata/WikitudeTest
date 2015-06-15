//
//  DetailsViewController.h
//  WikitudeTest
//
//  Created by Patrycja Sitek on 12/06/15.
//  Copyright (c) 2015 Patrycja Sitek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailsLabel;
@property (weak, nonatomic) IBOutlet UIButton *scanButton;
@property (weak, nonatomic) IBOutlet UIView *container;

@end
