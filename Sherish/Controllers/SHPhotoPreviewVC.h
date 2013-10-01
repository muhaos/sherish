//
//  SHPhotoPreviewVC.h
//  Sherish
//
//  Created by Vova Musiienko on 01.10.13.
//  Copyright (c) 2013 swanteams.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SHPhotoPreviewVC : UIViewController

@property (nonatomic, strong) UIImage* previewedImage;


@property (nonatomic, strong) IBOutlet UIScrollView* scrollView;
@property (nonatomic, strong) IBOutlet UIImageView* previewImageView;

- (IBAction) cancelTapped:(id)sender;
- (IBAction) saveTapped:(id)sender;


@end
