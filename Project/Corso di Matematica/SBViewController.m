//
//  SBViewController.m
//  Corso di Matematica
//
//  Created by Federico Baldi Lanfranchi on 15/07/13.
//  Copyright (c) 2013 SB AppStudios. All rights reserved.
//

#import "SBViewController.h"
#import "MessageUI/MessageUI.h"

@interface SBViewController ()


@end

@implementation SBViewController
@synthesize webViewArgomenti;
@synthesize webViewCompiti;
@synthesize webViewEsercizi;
@synthesize webViewGoniometria;
@synthesize webViewFormule;
@synthesize webViewInfo;
@synthesize webViewGlossario;
@synthesize webViewCorsoCompleto;
@synthesize webViewBibliografia;
@synthesize imageViewHome;
@synthesize isFavorite;
@synthesize menu;
@synthesize menuEsercizi;
@synthesize addPreferiti;
@synthesize addPreferitiEsercizi;
@synthesize supportsRotation;
@synthesize loadingIndicator;

-(NSMutableArray *)theFavorites
{
    if (!_theFavorites) {
        _theFavorites = [[NSMutableArray alloc] init];
    }
    
    return _theFavorites;
    
}

-(NSMutableArray *)theFavoritesEsercizi
{
    if (!_theFavoritesEsercizi) {
        _theFavoritesEsercizi = [[NSMutableArray alloc] init];
    }
    
    return _theFavoritesEsercizi;
    
}

- (void) addToFavorites {
    
    
    if([self.theFavorites containsObject:self.navBarLabelContents]) {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Attenzione!"
                                                        message:@"Argomento già presente nei Preferiti!"
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        
    }
    
    else {
        
    [self.theFavorites addObject:[NSString stringWithFormat:@"%@",self.navBarLabelContents]];
        
    }
    
    [[NSUserDefaults standardUserDefaults] setObject:self.theFavorites forKey:@"Key"];
    
}



- (void) addToFavoritesEsercizi {
    
    
    if([self.theFavoritesEsercizi containsObject:self.navBarLabelContents]) {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Attenzione!"
                                                        message:@"Esercizio già presente nei Preferiti!"
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        
    }
    
    else {
        
        [self.theFavoritesEsercizi addObject:[NSString stringWithFormat:@"%@",self.navBarLabelContents]];
        
    }
    
    [[NSUserDefaults standardUserDefaults] setObject:self.theFavoritesEsercizi forKey:@"KeyEsercizi"];
    
}



-(IBAction)menu:(id)sender
{
    
    menu = [[UIActionSheet alloc]initWithTitle:nil delegate:self cancelButtonTitle:@"Annulla" destructiveButtonTitle:nil otherButtonTitles:@"Aggiungi ai preferiti", nil];
    
    menu.actionSheetStyle = UIActionSheetStyleBlackTranslucent;
    
    [menu showInView:self.view];
    
}

- (IBAction)menuEsercizi:(id)sender
{
    
    menuEsercizi = [[UIActionSheet alloc]initWithTitle:nil delegate:self cancelButtonTitle:@"Annulla" destructiveButtonTitle:nil otherButtonTitles:@"Aggiungi ai preferiti", nil];
    
    menuEsercizi.actionSheetStyle = UIActionSheetStyleBlackTranslucent;
    
    [menuEsercizi showInView:self.view];
}


-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (menu) {
        
        
        if (buttonIndex == 0)      {
            
            [self addToFavorites];
            
        }
        
        else if (buttonIndex == 1) {
            
        }
        
        else if (buttonIndex == 2) {
            
        }
        
    } else if (menuEsercizi) {
        
        if (buttonIndex == 0)      {
            
        [self addToFavoritesEsercizi];
            
        }
        
        else if (buttonIndex == 1) {
            
        }
        
        else if (buttonIndex == 2) {
            
        }
    }
    
}

-(BOOL)shouldAutorotate {
    
    return supportsRotation;
}

-(NSUInteger)supportedInterfaceOrientations {
    
    return (UIInterfaceOrientationMaskLandscape | UIInterfaceOrientationMaskPortrait);
}

- (void)viewDidLoad
{
    
    
    webViewInfo.delegate = self;
    webViewCorsoCompleto.delegate = self;
    
    self.theFavorites = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"Key"]];
    
        if(self.theFavorites == nil) {
        
        
        self.theFavorites = [[NSMutableArray alloc] init];
        
    }
    
    self.theFavoritesEsercizi = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"KeyEsercizi"]];
    
    if(self.theFavoritesEsercizi == nil) {
        
        
        self.theFavoritesEsercizi = [[NSMutableArray alloc] init];
        
    }
    
    if (webViewArgomenti) {
        NSString *pathName = self.navBarLabelContents;
        NSString *path = [[NSBundle mainBundle] pathForResource:(NSString *)pathName ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [webViewArgomenti loadRequest:request];
        
        self.addPreferiti.enabled = isFavorite;
        supportsRotation = YES;
        
    } else if (webViewCompiti) {
        
        NSString *pathName = self.navBarLabelContents;
        NSString *path = [[NSBundle mainBundle] pathForResource:(NSString *)pathName ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [webViewCompiti loadRequest:request];
        supportsRotation = YES;
        
    } else if (webViewEsercizi) {
        
        NSString *partialPathName = self.navBarLabelContents;
        NSMutableString *pathName = [NSMutableString stringWithFormat:(NSString *)partialPathName];
        [pathName appendString:@"_Esercizi"];
        NSString *path = [[NSBundle mainBundle] pathForResource:(NSString *)pathName ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [webViewEsercizi loadRequest:request];
        
        self.addPreferiti.enabled = isFavorite;
        supportsRotation = YES;
        
    } else if (webViewGoniometria) {
        
        NSString *pathName = [NSString stringWithFormat:@"Tavole goniometriche"];
        NSString *path = [[NSBundle mainBundle] pathForResource:(NSString *)pathName ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [webViewGoniometria loadRequest:request];
        supportsRotation = YES;
        
    } else if (webViewFormule) {
        
        NSString *pathName = self.navBarLabelContents;
        NSString *path = [[NSBundle mainBundle] pathForResource:(NSString *)pathName ofType:@"pdf"];
        NSURL *url= [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [webViewFormule loadRequest:request];
        supportsRotation = YES;
        
    } else if (webViewInfo) {
        NSURL *url = [NSURL URLWithString:pathInfo];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSOperationQueue *queue = [[NSOperationQueue alloc] init];
        [NSURLConnection sendAsynchronousRequest:request queue:queue completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        
            if ([data length] > 0 && error == nil) {
                
            [webViewInfo loadRequest:request];
                
            } else if (error != nil)  {
                
            NSLog(@"Error: %@", error);
                
            }
            
            }];
        
        supportsRotation = NO;
        
    } else if (webViewGlossario) {
        
        NSString *partialPathName = self.navBarLabelContents;
        NSMutableString *pathName = [NSMutableString stringWithFormat:(NSString *)partialPathName];
        [pathName appendString:@"_Glossario"];
        NSString *path = [[NSBundle mainBundle] pathForResource:(NSString *)pathName ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [webViewGlossario loadRequest:request];
        supportsRotation = YES;
    
    } else if (webViewCorsoCompleto) {
        
        NSURL *url = [NSURL URLWithString:pathInfo];
         NSURLRequest *request = [NSURLRequest requestWithURL:url];
         NSOperationQueue *queue = [[NSOperationQueue alloc] init];
         [NSURLConnection sendAsynchronousRequest:request queue:queue completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
            
             if ([data length] > 0 && error == nil) {
                 
             [webViewCorsoCompleto loadRequest:request];
                 
             }
             
             else if (error != nil) {
                 
             NSLog(@"Error: %@", error);
                 
             }
        }];
        
        supportsRotation = NO;
        
    } else if (webViewBibliografia) {
        
        NSString *pathName = [NSString stringWithFormat:@"Bibliografia"];
        NSString *path = [[NSBundle mainBundle] pathForResource:(NSString *)pathName ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [webViewBibliografia loadRequest:request];
        
        supportsRotation = NO;
        
    } else {
        
        supportsRotation = NO;
        
    }
    
    if (imageViewHome) {
        if ([[UIScreen mainScreen] bounds].size.height == 480) {
            
            imageViewHome.image = [UIImage imageNamed:@"CoverApp.png"];
        }
        
        else {
            imageViewHome.image = [UIImage imageNamed:@"CoverApp5.png"];
        }
    }
    
    if ([[UIDevice currentDevice].systemVersion hasPrefix:@"7"]) {
        
    self.navigationController.navigationBar.tintColor = [UIColor redColor];
        
    }
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:nil];
    
    self.navigationBar.title = self.navBarLabelContents;
    
    [super viewDidLoad];
    
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [loadingIndicator startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [loadingIndicator stopAnimating];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)twitter {
    
    pathInfo = @"http://www.twitter.com/sbappstudios";
}

- (IBAction)facebook {
    
    pathInfo = @"http://www.facebook.com/sbappstudios";
}

- (IBAction)google {
    
    pathInfo = @"https://plus.google.com/102669453381367143942/about?hl=it";
}

-(IBAction)primoAnno {
    
    pathInfo = @"http://www.sbappstudios.it/matematica2.pdf";
}

-(IBAction)secondoAnno {
    
    pathInfo = @"http://www.sbappstudios.it/matematica2.pdf";
}

-(IBAction)terzoAnno {
    
    pathInfo = @"http://www.sbappstudios.it/matematica3.pdf";
}

@end