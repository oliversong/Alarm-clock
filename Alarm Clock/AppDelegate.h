//
//  AppDelegate.h
//  Alarm Clock
//
//  Created by Oliver Song on 6/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FBConnect.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, FBSessionDelegate>
{
    Facebook *facebook;    
}
@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) Facebook *facebook;

@end
