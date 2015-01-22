//
//  InSwipeViewController.h
//  TeadsSDKDemo
//
//  Created by Nikolaï Roycourt on 16/01/2015.
//  Copyright (c) 2015 Teads. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <TeadsSDK/TeadsNativeVideo.h>

@interface InSwipeViewController : UIPageViewController <UIPageViewControllerDataSource, UIPageViewControllerDelegate, TeadsNativeVideoDelegate>

@property (nonatomic, strong) IBOutlet UIPageControl *pageControl;

@end
