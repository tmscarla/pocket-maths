//
//  SBSecondoGradoViewController.m
//  Corso di Matematica
//
//  Created by Federico Baldi Lanfranchi on 08/09/13.
//  Copyright (c) 2013 SB AppStudios. All rights reserved.
//

#import "SBSecondoGradoViewController.h"

@interface SBSecondoGradoViewController ()

@end

@implementation SBSecondoGradoViewController
@synthesize imageViewUtility;

-(void)ImageViewUtility {
    
    if([[UIScreen mainScreen] bounds].size.height == 480) {
        self.imageViewUtility.image = [UIImage imageNamed:@"utility.png"];
    } //iPhone-4
    
    else if([[UIScreen mainScreen] bounds].size.height == 568) {
        self.imageViewUtility.image = [UIImage imageNamed:@"utility@2x.png"];
    } //iPhone-5
}

-(void)calculateResult
{
    if (self.textFieldADen.text != 0 && self.textFieldBDen.text != 0 && self.textFieldCDen.text != 0) {
        a = [self.textFieldANum.text floatValue] / [self.textFieldADen.text floatValue];
        b = [self.textFieldBNum.text floatValue] / [self.textFieldBDen.text floatValue];
        c = [self.textFieldCNum.text floatValue] / [self.textFieldCDen.text floatValue];
        signed int delta = pow(b, 2) - (4 * a * c);
        if (delta < 0) {
            self.labelX1.text = [NSString stringWithFormat:@"Impossibile"];
            self.labelX2.text = [NSString stringWithFormat:@"Impossibile"];
            self.labelDelta.text = [NSString stringWithFormat:@"%d", delta];
        } else {
            self.labelDelta.text = [NSString stringWithFormat:@"%d", delta];
            float X1 = (- b + sqrt(delta)) / ( 2 * a);
            float X2 = (- b - sqrt(delta)) / ( 2 * a);
            self.labelX1.text = [NSString stringWithFormat:@"%.3f", X1];
            self.labelX2.text = [NSString stringWithFormat:@"%.3f", X2];
        }
    } else {
        self.labelDelta.text = [NSString stringWithFormat:@"Impossibile"];
        self.labelX1.text = [NSString stringWithFormat:@"Impossibile"];
        self.labelX2.text = [NSString stringWithFormat:@"Impossibile"];
    }
}

-(IBAction)dismissKeyboard:(id)sender
{
    [sender resignFirstResponder];
}

-(IBAction)showResult
{
    [self calculateResult];
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
    [self ImageViewUtility];
    
    if ([[UIDevice currentDevice].systemVersion hasPrefix:@"7"]) {
        
     self.navigationController.navigationBar.tintColor = [UIColor redColor];

    }
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
