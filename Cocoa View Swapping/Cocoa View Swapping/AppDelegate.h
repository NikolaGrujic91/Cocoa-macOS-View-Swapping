//
//  AppDelegate.h
//  Cocoa View Swapping
//
//  Created by Nikola Grujic on 05/02/2020.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
{
    NSString *currentView;
}

@property (weak) IBOutlet NSWindow *window;
@property (retain, nonatomic) IBOutlet NSButton *nextButton;
@property (retain, nonatomic) IBOutlet NSView *mainView;
@property (retain, nonatomic) IBOutlet NSView *view1;
@property (retain, nonatomic) IBOutlet NSView *view2;

- (void)setTransition;

- (IBAction)nextClicked:(id)sender;

@end

