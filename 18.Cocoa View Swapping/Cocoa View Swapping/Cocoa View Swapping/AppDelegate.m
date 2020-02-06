//
//  AppDelegate.m
//  Cocoa View Swapping
//
//  Created by Nikola Grujic on 05/02/2020.
//

#import "AppDelegate.h"
#import <QuartzCore/QuartzCore.h>

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)notification
{
    currentView = @"view1";
    [_mainView addSubview:_view1];
    [self setTransition];
}

- (void)setTransition
{
    [_mainView setWantsLayer:YES];
     
    CATransition *transition = [CATransition animation];
    [transition setDuration:1.0];
    [transition setType:kCATransitionPush];
    [transition setSubtype:kCATransitionFromRight];
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:transition forKey:@"subviews"];
    [_mainView setAnimations:dictionary];
}

#pragma mark Action methods

- (IBAction)nextClicked:(id)sender
{
    if ([currentView isEqualToString:@"view1"] == YES)
    {
        [[_mainView animator] replaceSubview:_view1 with:_view2];
        currentView = @"view2";
    }
    else
    {
        [[_mainView animator] replaceSubview:_view2 with:_view1];
        currentView = @"view1";
    }
}

@end
