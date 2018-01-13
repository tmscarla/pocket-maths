//
//  SBSecondoGradoViewController.h
//  Corso di Matematica
//
//  Created by Federico Baldi Lanfranchi on 08/09/13.
//  Copyright (c) 2013 SB AppStudios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SBSecondoGradoViewController : UIViewController {
    float a;
    float b;
    float c;
}

@property (strong, nonatomic) IBOutlet UITextField *textFieldANum;
@property (strong, nonatomic) IBOutlet UITextField *textFieldADen;
@property (strong, nonatomic) IBOutlet UITextField *textFieldBNum;
@property (strong, nonatomic) IBOutlet UITextField *textFieldBDen;
@property (strong, nonatomic) IBOutlet UITextField *textFieldCNum;
@property (strong, nonatomic) IBOutlet UITextField *textFieldCDen;

@property (strong, nonatomic) IBOutlet UILabel *labelDelta;
@property (strong, nonatomic) IBOutlet UILabel *labelX1;
@property (strong, nonatomic) IBOutlet UILabel *labelX2;

@property (retain, nonatomic) IBOutlet UIImageView *imageViewUtility;


-(IBAction)showResult;
-(IBAction)dismissKeyboard:(id)sender;

@end
