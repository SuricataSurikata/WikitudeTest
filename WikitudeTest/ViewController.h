//
//  ViewController.h
//  WikitudeTest
//
//  Created by Patrycja Sitek on 10/06/15.
//  Copyright (c) 2015 Patrycja Sitek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WikitudeSDK/WikitudeSDK.h>
/* Wikitude SDK debugging */
#import <WikitudeSDK/WTArchitectViewDebugDelegate.h>

@interface ViewController : UIViewController <WTArchitectViewDelegate, WTArchitectViewDebugDelegate>


@end

