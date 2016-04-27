//
//  CommonViewController.h
//  UIFrame
//
//  Created by LanceZH on 16/4/14.
//  Copyright © 2016年 LanceZH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CommonViewController : UIViewController

@property (nonatomic, assign) BOOL              hasNav; //default is YES;

@property (nonatomic, assign, getter=isIOS7FullScreenLayout) BOOL  iOS7FullScreenLayout;   //default is NO;


@end
