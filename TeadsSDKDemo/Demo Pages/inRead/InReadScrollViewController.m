//
//  InReadScrollViewController.m
//  TeadsSDKDemo
//
//  Created by Nikolaï Roycourt on 16/01/2015.
//  Copyright (c) 2015 Teads. All rights reserved.
//

#import "InReadScrollViewController.h"

@interface InReadScrollViewController ()

@property (assign, nonatomic) BOOL adExperienceLoaded;
@property (strong, nonatomic) TeadsNativeVideo *teadsInRead;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *inReadConstraint;

@end

@implementation InReadScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.scrollView.delegate = self;
    
    self.navigationItem.title = @"inRead ScrollView";
    
    //Your custom ad tracking status : the ad is not loaded yet
    self.adExperienceLoaded = NO;
    self.teadsInRead = [[TeadsNativeVideo alloc] initInReadWithPlacementId:@"27695" placeholder:self.inReadView heightConstraint:self.inReadConstraint scrollView:self.scrollView rootViewController:self delegate:self];
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    if (self.adExperienceLoaded) {
        [self.teadsInRead viewControllerAppeared:self];
    } else {
        [self.teadsInRead loadFromFactory];
    }
}

-(void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
    if (self.adExperienceLoaded) {
        [self.teadsInRead viewControllerDisappeared:self];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    [self.teadsInRead clean];
}

#pragma mark -
#pragma mark - TeadsNativeVideoDelegate

/**
 * NativeVideo Failed to Load
 *
 * @param interstitial  : the TeadsNativeVideo object
 * @param error         : the TeadsError object
 */
- (void)teadsNativeVideo:(TeadsNativeVideo *)nativeVideo didFailLoading:(TeadsError *)error {
    self.adExperienceLoaded = NO;
}

/**
 * NativeVideo Will Load (loading)
 *
 * @param interstitial  : the TeadsNativeVideo object
 */
- (void)teadsNativeVideoWillLoad:(TeadsNativeVideo *)nativeVideo {
    
}

/**
 * NativeVideo Did Load (loaded successfully)
 *
 * @param interstitial  : the TeadsNativeVideo object
 */
- (void)teadsNativeVideoDidLoad:(TeadsNativeVideo *)nativeVideo {
    self.adExperienceLoaded = YES;
}

/**
 * NativeVideo Will Start Playing (loading)
 *
 * @param nativeVideo  : the TeadsNativeVideo object
 */
- (void)teadsNativeVideoWillStart:(TeadsNativeVideo *)nativeVideo {
    
}

/**
 * NativeVideo Did Start Playing (playing)
 *
 * @param nativeVideo  : the TeadsNativeVideo object
 */
- (void)teadsNativeVideoDidStart:(TeadsNativeVideo *)nativeVideo {
    
}

/**
 * NativeVideo Will Stop Playing (stopping)
 *
 * @param nativeVideo  : the TeadsNativeVideo object
 */
- (void)teadsNativeVideoWillStop:(TeadsNativeVideo *)nativeVideo {
    
}

/**
 * NativeVideo Did Stop Playing (stopped)
 *
 * @param nativeVideo  : the TeadsNativeVideo object
 */
- (void)teadsNativeVideoDidStop:(TeadsNativeVideo *)nativeVideo {
    
}

/**
 * NativeVideo Did Pause (paused)
 *
 * @param nativeVideo  : the TeadsNativeVideo object
 */
- (void)teadsNativeVideoDidPause:(TeadsNativeVideo *)nativeVideo {
    
}

/**
 * NativeVideo Did Resume (playing)
 *
 * @param nativeVideo  : the TeadsNativeVideo object
 */
- (void)teadsNativeVideoDidResume:(TeadsNativeVideo *)nativeVideo {
    
}

/**
 * NativeVideo Did Mute Sound
 *
 * @param nativeVideo  : the TeadsNativeVideo object
 */
- (void)teadsNativeVideoDidMute:(TeadsNativeVideo *)nativeVideo {
    
}

/**
 * NativeVideo Did Unmute Sound
 *
 * @param nativeVideo  : the TeadsNativeVideo object
 */
- (void)teadsNativeVideoDidUnmute:(TeadsNativeVideo *)nativeVideo {
    
}

/**
 * NativeVideo Will expand
 *
 * @param nativeVideo  : the TeadsNativeVideo object
 */
- (void)teadsNativeVideoWillExpand:(TeadsNativeVideo *)nativeVideo {
    
}

/**
 * NativeVideo Did expand
 *
 * @param nativeVideo  : the TeadsNativeVideo object
 */
- (void)teadsNativeVideoDidExpand:(TeadsNativeVideo *)nativeVideo {
    
}

/**
 * NativeVideo Will collapse
 *
 * @param nativeVideo  : the TeadsNativeVideo object
 */
- (void)teadsNativeVideoWillCollapse:(TeadsNativeVideo *)nativeVideo {
    
}

/**
 * NativeVideo did collapse
 *
 * @param nativeVideo  : the TeadsNativeVideo object
 */
- (void)teadsNativeVideoDidCollapse:(TeadsNativeVideo *)nativeVideo {
    self.adExperienceLoaded = NO;
}

/**
 * NativeVideo was clicked
 *
 * @param nativeVideo  : the TeadsNativeVideo object
 */
- (void)teadsNativeVideoWasClicked:(TeadsNativeVideo *)nativeVideo {
    
}

/**
 * NativeVideo Did Stop Playing (stopped)
 *
 * @param nativeVideo  : the TeadsNativeVideo object
 */
- (void)teadsNativeVideoDidClickBrowserClose:(TeadsNativeVideo *)nativeVideo {
    
}

/**
 * NativeVideo Will Take Over Fullscreen
 *
 * @param nativeVideo  : the TeadsNativeVideo object
 */
- (void)teadsNativeVideoWillTakeOverFullScreen:(TeadsNativeVideo *)nativeVideo {
    
}

/**
 * NativeVideo Did Take Over Fullscreen
 *
 * @param nativeVideo  : the TeadsNativeVideo object
 */
- (void)teadsNativeVideoDidTakeOverFullScreen:(TeadsNativeVideo *)nativeVideo {
    
}

/**
 * NativeVideo Will Dismiss Fullscreen
 *
 * @param nativeVideo  : the TeadsNativeVideo object
 */
- (void)teadsNativeVideoWillDismissFullscreen:(TeadsNativeVideo *)nativeVideo {
    
}

/**
 * NativeVideo Did Dismiss Fullscreen
 *
 * @param nativeVideo  : the TeadsNativeVideo object
 */
- (void)teadsNativeVideoDidDismissFullscreen:(TeadsNativeVideo *)nativeVideo {
    
}

/**
 * NativeVideo Skip Button Was Tapped (skip button pressed)
 *
 * @param nativeVideo  : the TeadsNativeVideo object
 */
- (void)teadsNativeVideoSkipButtonTapped:(TeadsNativeVideo *)nativeVideo {
    
}

/**
 * NativeVideo Skip Button Did Show (skip button appeared)
 *
 * @param nativeVideo  : the TeadsNativeVideo object
 */
- (void)teadsNativeVideoSkipButtonDidShow:(TeadsNativeVideo *)nativeVideo {
    
}

@end
