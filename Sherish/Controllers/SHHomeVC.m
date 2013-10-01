//
//  SHHomeVC.m
//  Sherish
//
//  Created by Vova Musiienko on 30.09.13.
//  Copyright (c) 2013 swanteams.com. All rights reserved.
//

#import "SHHomeVC.h"
#import "SHAppDelegate.h"
#import "SHCameraVC.h"


@interface SHHomeVC () {
    
}


@end



@implementation SHHomeVC

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}


- (IBAction) photoTapped:(id)sender {
    self.cameraVC = [DELEGATE.storyboard instantiateViewControllerWithIdentifier:@"camera"];
    [self.cameraVC showInVC:self];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
