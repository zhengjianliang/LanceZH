//
//  CommonViewController.m
//  UIFrame
//
//  Created by LanceZH on 16/4/14.
//  Copyright © 2016年 LanceZH. All rights reserved.
//

#import "CommonViewController.h"

#define IOS7_OR_LATER	( [[[UIDevice currentDevice] systemVersion] compare:@"7.0"] != NSOrderedAscending )

@interface CommonViewController ()

@end

@implementation CommonViewController

+ (id)controller
{
    return [[self alloc] init];
}

- (id)init{
    
    self = [super init];
    
    if (self) {
        self.iOS7FullScreenLayout = NO;
        
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        
        //self.iOS7FullScreenLayout = NO;
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setIOS7FullScreenLayout:(BOOL)iOS7FullScreenLayout
{
    _iOS7FullScreenLayout = iOS7FullScreenLayout;
    if (IOS7_OR_LATER)
    {
        if (_iOS7FullScreenLayout)
        {
            self.edgesForExtendedLayout = UIRectEdgeAll;
            self.extendedLayoutIncludesOpaqueBars = NO;
            self.automaticallyAdjustsScrollViewInsets = YES;
        }
        else
        {
            self.edgesForExtendedLayout = UIRectEdgeNone;
            self.extendedLayoutIncludesOpaqueBars = NO;
            self.automaticallyAdjustsScrollViewInsets = NO;
        }
    }
}


@end
