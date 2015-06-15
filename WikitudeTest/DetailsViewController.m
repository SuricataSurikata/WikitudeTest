//
//  DetailsViewController.m
//  WikitudeTest
//
//  Created by Patrycja Sitek on 12/06/15.
//  Copyright (c) 2015 Patrycja Sitek. All rights reserved.
//

#import "DetailsViewController.h"
#import "AppDelegate.h"
#import "ViewController.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)showARViewControllers{
    CATransition *shutterAnimation = [CATransition animation];
    [shutterAnimation setDelegate:self];
    [shutterAnimation setDuration:0.4];
    shutterAnimation.timingFunction = UIViewAnimationCurveEaseInOut;
    shutterAnimation.fillMode = kCAFillModeForwards;
    shutterAnimation.removedOnCompletion = NO;
    [shutterAnimation setType:@"cameraIrisHollowClose"];

    [self.navigationController.view.layer addAnimation:shutterAnimation forKey:nil];
}

-(void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
    CATransition *shutterReverseAnimation = [CATransition animation];
    [shutterReverseAnimation setDuration:0.4];
    shutterReverseAnimation.timingFunction = UIViewAnimationCurveEaseInOut;
    [shutterReverseAnimation setType:@"cameraIrisHollowOpen"];
    [self.navigationController.view.layer addAnimation:shutterReverseAnimation forKey:nil];
    
    ViewController *arViewController = [[ViewController alloc] init];
    [self.navigationController pushViewController:arViewController animated:NO];
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
