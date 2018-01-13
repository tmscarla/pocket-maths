//
//  SBConicheViewController.h
//  Corso di Matematica
//
//  Created by Tommaso Scarlatti on 18/09/13.
//  Copyright (c) 2013 SB AppStudios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SBConicheViewController : UIViewController {

    float a;
    float b;
    float c;
    float d;
    float e;
    float f;

}


@property (strong, nonatomic) IBOutlet UITextField *textFieldA;
@property (strong, nonatomic) IBOutlet UITextField *textFieldB;
@property (strong, nonatomic) IBOutlet UITextField *textFieldC;
@property (strong, nonatomic) IBOutlet UITextField *textFieldD;
@property (strong, nonatomic) IBOutlet UITextField *textFieldE;
@property (strong, nonatomic) IBOutlet UITextField *textFieldF;


@property (strong, nonatomic) IBOutlet UILabel *labelEcc;

@property (strong, nonatomic) IBOutlet UILabel *labelResult;


- (IBAction)showResult;
- (IBAction)dismissKeybord:(id)sender;

@end
