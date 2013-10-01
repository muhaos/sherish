//
//  SHHomeVC.h
//  Sherish
//
//  Created by Vova Musiienko on 30.09.13.
//  Copyright (c) 2013 swanteams.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SHCameraVC;

@interface SHHomeVC : UIViewController

@property (nonatomic, strong) SHCameraVC* cameraVC;

- (IBAction) photoTapped:(id)sender;

@end
