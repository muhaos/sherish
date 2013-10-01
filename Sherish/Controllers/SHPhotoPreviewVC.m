//
//  SHPhotoPreviewVC.m
//  Sherish
//
//  Created by Vova Musiienko on 01.10.13.
//  Copyright (c) 2013 swanteams.com. All rights reserved.
//

#import "SHPhotoPreviewVC.h"

@interface SHPhotoPreviewVC () <UIScrollViewDelegate>

@end

@implementation SHPhotoPreviewVC

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.previewImageView.image = self.previewedImage;
}


- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return self.previewImageView;
}


- (void)scrollViewDidZoom:(UIScrollView *)aScrollView {
}


- (IBAction) cancelTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (IBAction) saveTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
