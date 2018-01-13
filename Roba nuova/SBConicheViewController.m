//
//  SBConicheViewController.m
//  Corso di Matematica
//
//  Created by Tommaso Scarlatti on 18/09/13.
//  Copyright (c) 2013 SB AppStudios. All rights reserved.
//

#import "SBConicheViewController.h"

@interface SBConicheViewController ()

@end

@implementation SBConicheViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)calculate
{
    
    a = [self.textFieldA.text floatValue];
    b = [self.textFieldB.text floatValue];
    c = [self.textFieldC.text floatValue];
    d = [self.textFieldD.text floatValue];
    e = [self.textFieldE.text floatValue];
    f = [self.textFieldF.text floatValue];
    
    
    
       if((a * c - pow(b,2)) / 4 == 0) {
    
          self.labelEcc.text = (NSString *) @"e = 0";
          self.labelResult.text = (NSString *) @"La conica in questione è una PARABOLA";
    
       }
    
    
       else if((a * c - pow(b,2)) / 4 < 0) {
        
          self.labelEcc.text = (NSString *) @"e < 0";
          self.labelResult.text = (NSString *) @"La conica in questione è un IPERBOLE";
        
       }
    
    
       else if((a * c - pow(b,2)) / 4 > 0) {
        
          self.labelEcc.text = (NSString *) @"e > 0";
          self.labelResult.text = (NSString *) @"La conica in questione è un ELLISSE";
        
       }
    
       else if((a * c - pow(b,2)) / 4 == 1) {
        
          self.labelEcc.text = (NSString *) @"e = 1";
          self.labelResult.text = (NSString *) @"La conica in questione è una CIRCONFERENZA";
        
       }


    
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

- (IBAction)showResult {
    
    [self calculate];
}

- (IBAction)dismissKeybord:(id)sender {
    
 [sender resignFirstResponder];

}
@end
