//
//  AppDelegate.m
//  FileAssociation
//
//  Created by dk on 2014. 9. 24..
//  Copyright (c) 2014년 dk. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

-(IBAction)openDocument:(id)sender
{
    NSLog(@"open document");
    NSOpenPanel *panel = [NSOpenPanel openPanel];
    [panel setCanChooseDirectories:YES];
    
    NSInteger res = [panel runModal];
    if ( res == NSOKButton )
    {
        [self application:[NSApplication sharedApplication] openFile:[[panel URLs] objectAtIndex:0]];
    }
}

-(BOOL)application:(NSApplication *)app openFile:(NSString *)filename
{
    NSLog(@"filename = %@", filename);
    return YES;
}

@end
