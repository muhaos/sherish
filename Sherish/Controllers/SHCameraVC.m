//
//  SHCameraVC.m
//  Sherish
//
//  Created by Vova Musiienko on 30.09.13.
//  Copyright (c) 2013 swanteams.com. All rights reserved.
//

#import "SHCameraVC.h"
#import "SHAppDelegate.h"
#import "SHPhotoPreviewVC.h"

@interface SHCameraVC () <UINavigationControllerDelegate, UIImagePickerControllerDelegate>


@property (nonatomic) UIImagePickerController *imagePickerController;

@end

@implementation SHCameraVC

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}


- (void) showInVC:(UIViewController*) vc {
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    imagePickerController.modalPresentationStyle = UIModalPresentationCurrentContext;
    imagePickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
    imagePickerController.delegate = self;
    
    if (imagePickerController.sourceType == UIImagePickerControllerSourceTypeCamera) {
        imagePickerController.showsCameraControls = NO;
        self.view.frame = imagePickerController.cameraOverlayView.frame;
        imagePickerController.cameraOverlayView = self.view;
    }
    
    self.imagePickerController = imagePickerController;
    [vc presentViewController:self.imagePickerController animated:YES completion:nil];
}



- (IBAction) menuTapped:(id)sender {
    [self.imagePickerController dismissViewControllerAnimated:YES completion:NULL];
}


- (IBAction) galleryTapped:(id)sender {
    
}


- (IBAction) takePhotoTapped:(id)sender {
    [self.imagePickerController takePicture];
}


- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    self.capturedImage = [info valueForKey:UIImagePickerControllerOriginalImage];
    [self performSegueWithIdentifier:@"preview" sender:self];
}


- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self dismissViewControllerAnimated:YES completion:NULL];
}


- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"preview"]) {
        SHPhotoPreviewVC* vc = segue.destinationViewController;
        vc.previewedImage = self.capturedImage;
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
