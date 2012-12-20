//
//  Nov22AppDelegate.h
//  Nov22
//
//  Created by Samantha Kapai on 12/18/12.
//  Copyright (c) 2012 Samantha Kapai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>	//needed for MPMoviePlayerController
#import <AVFoundation/AVFoundation.h>
@class View;

@interface Nov22AppDelegate: UIResponder <UIApplicationDelegate> {
    MPMoviePlayerController *controller;
	View *view;
	UIWindow *_window;
    UILabel *label;
}

@property (strong, nonatomic) UIWindow *window;
@end
