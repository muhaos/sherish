//
//  SHCameraVC.h
//  Sherish
//
//  Created by Vova Musiienko on 30.09.13.
//  Copyright (c) 2013 swanteams.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SHCameraVC : UIViewController {
    
}


- (void) showInVC:(UIViewController*) vc;

@property (nonatomic, strong) UIImage* capturedImage;


- (IBAction) menuTapped:(id)sender;
- (IBAction) galleryTapped:(id)sender;
- (IBAction) takePhotoTapped:(id)sender;


@end
