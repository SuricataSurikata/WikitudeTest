//
//  DetailsViewController.m
//  WikitudeTest
//
//  Created by Patrycja Sitek on 12/06/15.
//  Copyright (c) 2015 Patrycja Sitek. All rights reserved.
//

#import "DetailsViewController.h"
#import "AppDelegate.h"
#import "ARViewController.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.detailsTextView.text = @"The Mona Lisa (Italian: Monna Lisa or La Gioconda, French: La Joconde) or La Gioconda is a half-length portrait of a woman by the Italian artist Leonardo da Vinci, which has been acclaimed as \"the best known, the most visited, the most written about, the most sung about, the most parodied work of art in the world\".\n\nThe painting, thought to be a portrait of Lisa Gherardini, the wife of Francesco del Giocondo, is in oil on a whiteLombardy poplar panel, and is believed to have been painted between 1503 and 1506. Leonardo may have continued working on it as late as 1517. It was acquired by King Francis I of France and is now the property of theFrench Republic, on permanent display at the Louvre Museum in Paris since 1797.\n\nThe subject's expression, which is frequently described as enigmatic, the monumentality of the composition, the subtle modeling of forms, and the atmospheric illusionism were novel qualities that have contributed to the continuing fascination and study of the work.";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAR {
    ARViewController *arViewController = [[ARViewController alloc] init];
    [self.navigationController pushViewController:arViewController animated:YES];
}

// can't be used, app will be rejected

//-(IBAction)showARViewControllers{
//    CATransition *shutterAnimation = [CATransition animation];
//    [shutterAnimation setDelegate:self];
//    [shutterAnimation setDuration:0.4];
//    shutterAnimation.timingFunction = UIViewAnimationCurveEaseInOut;
//    shutterAnimation.fillMode = kCAFillModeForwards;
//    shutterAnimation.removedOnCompletion = NO;
//    [shutterAnimation setType:@"cameraIrisHollowClose"];
//
//    [self.navigationController.view.layer addAnimation:shutterAnimation forKey:nil];
//}
//
//-(void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
//    CATransition *shutterReverseAnimation = [CATransition animation];
//    [shutterReverseAnimation setDuration:0.4];
//    shutterReverseAnimation.timingFunction = UIViewAnimationCurveEaseInOut;
//    [shutterReverseAnimation setType:@"cameraIrisHollowOpen"];
//    [self.navigationController.view.layer addAnimation:shutterReverseAnimation forKey:nil];
//    
//    ViewController *arViewController = [[ViewController alloc] init];
//    [self.navigationController pushViewController:arViewController animated:NO];
//}

@end
