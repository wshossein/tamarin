//
//  Manager.m
//  Tamarin
//
//  Created by Wyllian Hossein on 6/4/14.
//  Copyright (c) 2014 Nappix Apps. All rights reserved.
//

#import "Manager.h"
#import <MBProgressHUD.h>

@implementation Manager

#pragma mark - Database

- (void) copyDBIfNeeded
{
	/*NSFileManager *fileManager = [NSFileManager defaultManager];
	NSError *error;
	NSString *dbPath = [Database path];
	BOOL success = [fileManager fileExistsAtPath:dbPath];
	
	if(!success)
	{
		NSString *defaultDBPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:DBARQ];
		success = [fileManager copyItemAtPath:defaultDBPath toPath:dbPath error:&error];
		
		if (!success)
			NSAssert1(0, @"Falha ao tentar copiar o Banco de Dados. '%@'.", [error localizedDescription]);
	}*/
}

#pragma mark - Interface

+ (void) showMsg
{
    MBProgressHUD* hud = [[MBProgressHUD alloc] initWithWindow:[[UIApplication sharedApplication] keyWindow]];
    hud.removeFromSuperViewOnHide = YES;
    [[UIApplication sharedApplication].keyWindow addSubview:hud];
    [hud show:NO];
}

+ (void) closeMsg
{
    [MBProgressHUD hideHUDForView:[[UIApplication sharedApplication] keyWindow] animated:NO];
}

+ (void) showWarning: (NSString*) msg
{
    MBProgressHUD* hud = [[MBProgressHUD alloc] initWithWindow:[[UIApplication sharedApplication] keyWindow]];
    hud.customView = [[UIView alloc] initWithFrame:CGRectZero];
    hud.mode = MBProgressHUDModeCustomView;
    hud.removeFromSuperViewOnHide = YES;
    hud.labelText = msg;
    hud.minShowTime = 3.0;
    
    [[UIApplication sharedApplication].keyWindow addSubview:hud];
    [hud show:NO];
    [hud hide:NO];
}

#pragma mark Singleton

+(Manager*)instance
{
    static dispatch_once_t pred;
    static Manager *sharedManager = nil;
    dispatch_once(&pred, ^{
        sharedManager = [[Manager alloc] init];
        [sharedManager copyDBIfNeeded];
    });
    
    return sharedManager;
}


@end
