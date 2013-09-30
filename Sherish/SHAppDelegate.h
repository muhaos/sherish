//
//  SHAppDelegate.h
//  Sherish
//
//  Created by Vova Musiienko on 30.09.13.
//  Copyright (c) 2013 swanteams.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MFSideMenu.h"


@interface SHAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UIStoryboard *storyboard;
@property (strong, nonatomic) MFSideMenuContainerViewController *sideMenuContainer;

@end
