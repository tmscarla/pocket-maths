//
//  SBViewController.h
//  Corso di Matematica
//
//  Created by Federico Baldi Lanfranchi on 15/07/13.
//  Copyright (c) 2013 SB AppStudios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

NSString *pathInfo;

@interface SBViewController : UIViewController
<UIActionSheetDelegate, UIWebViewDelegate>

@property (strong, nonatomic) NSString *navBarLabelContents;

@property (strong, nonatomic) IBOutlet UINavigationItem *navigationBar;

@property (strong, nonatomic) IBOutlet UILabel *navBarLabel;

@property (strong, nonatomic) IBOutlet UIWebView *webViewArgomenti;
@property (strong, nonatomic) IBOutlet UIWebView *webViewCompiti;
@property (strong, nonatomic) IBOutlet UIWebView *webViewEsercizi;
@property (strong, nonatomic) IBOutlet UIWebView *webViewGoniometria;
@property (strong, nonatomic) IBOutlet UIWebView *webViewFormule;
@property (strong, nonatomic) IBOutlet UIWebView *webViewInfo;
@property (strong, nonatomic) IBOutlet UIWebView *webViewGlossario;
@property (strong, nonatomic) IBOutlet UIWebView *webViewCorsoCompleto;
@property (strong, nonatomic) IBOutlet UIWebView *webViewBibliografia;

@property (strong, nonatomic) IBOutlet UIImageView *imageViewHome;

@property (strong, nonatomic) NSMutableArray *theFavorites;
@property (strong, nonatomic) NSMutableArray *theFavoritesEsercizi;

@property (strong, nonatomic) IBOutlet UIActionSheet *menu;
@property (strong, nonatomic) IBOutlet UIActionSheet *menuEsercizi;

@property (strong, nonatomic) IBOutlet UIBarButtonItem *addPreferiti;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *addPreferitiEsercizi;

@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *loadingIndicator;

@property (nonatomic) BOOL isFavorite;
@property (nonatomic) BOOL supportsRotation;

- (IBAction)menu:(id)sender;
- (void) addToFavorites;

- (IBAction)menuEsercizi:(id)sender;
- (void) addToFavoritesEsercizi;

- (IBAction)twitter;
- (IBAction)facebook;
- (IBAction)google;
- (IBAction)primoAnno;
- (IBAction)secondoAnno;
- (IBAction)terzoAnno;

@end
