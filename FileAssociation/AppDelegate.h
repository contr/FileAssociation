//
//  AppDelegate.h
//  FileAssociation
//
//  Created by dk on 2014. 9. 24..
//  Copyright (c) 2014년 dk. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
{
}
-(BOOL)application:(NSApplication *)app openFile:(NSString *)filename;
-(IBAction)openDocument:(id)sender;
@end

