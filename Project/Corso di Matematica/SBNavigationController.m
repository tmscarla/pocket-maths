//
//  SBNavigationController.m
//  Pocket Maths
//
//  Created by Federico Baldi Lanfranchi on 30/01/14.
//  Copyright (c) 2014 SB AppStudios. All rights reserved.
//

#import "SBNavigationController.h"

@interface SBNavigationController ()

@end

@implementation SBNavigationController

-(BOOL)shouldAutorotate {
    
    return NO;
}

-(NSUInteger)supportedInterfaceOrientations {
    
    return UIInterfaceOrientationMaskPortrait;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
