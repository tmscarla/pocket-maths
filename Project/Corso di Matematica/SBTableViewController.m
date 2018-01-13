//
//  SBTableViewController.m
//  Corso di Matematica
//
//  Created by Federico Baldi Lanfranchi on 04/09/13.
//  Copyright (c) 2013 SB AppStudios. All rights reserved.
//

#import "SBTableViewController.h"
#import "SBViewController.h"

@interface SBTableViewController ()

@end

@implementation SBTableViewController
@synthesize tableViewAlfabetica;
@synthesize tableViewCronologica;
@synthesize tableViewAlfabeticaEsercizi;
@synthesize tableViewCronologicaEsercizi;
@synthesize tableViewCompiti;
@synthesize tableViewFormule;
@synthesize tableViewGlossario;
@synthesize tableViewPreferiti;
@synthesize tableViewPreferitiEsercizi;
@synthesize buttonPreferiti;

-(NSMutableArray *)firstSectionObjects
{
    if (!_firstSectionObjects) {
        _firstSectionObjects = [[NSMutableArray alloc] init];
    }
    
    return _firstSectionObjects;
    
}

-(NSMutableArray *)secondSectionObjects
{
    if (!_secondSectionObjects) {
        _secondSectionObjects = [[NSMutableArray alloc] init];
    }
    
    return _secondSectionObjects;
    
}

-(NSMutableArray *)thirdSectionObjects
{
    if (!_thirdSectionObjects) {
        _thirdSectionObjects = [[NSMutableArray alloc] init];
    }
    
    return _thirdSectionObjects;
    
}

-(NSMutableArray *)firstSectionResults
{
    if (!_firstSectionResults) {
        _firstSectionResults = [[NSMutableArray alloc] init];
    }
    
    return _firstSectionResults;
    
}

-(NSMutableArray *)secondSectionResults
{
    if (!_secondSectionResults) {
        _secondSectionResults = [[NSMutableArray alloc] init];
    }
    
    return _secondSectionResults;
    
}

-(NSMutableArray *)thirdSectionResults
{
    if (!_thirdSectionResults) {
        _thirdSectionResults = [[NSMutableArray alloc] init];
    }
    
    return _thirdSectionResults;
    
}

-(NSMutableArray *)objects
{
    if (!_objects) {
        _objects = [[NSMutableArray alloc] init];
    }
    
    return _objects;
    
}


-(NSMutableArray *)results
{
    if (!_results) {
        _results = [[NSMutableArray alloc] init];
    }
    
    return _results;
    
}

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

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if (tableViewAlfabetica) {
    
    [self.objects addObject:@"Circonferenza"];
    [self.objects addObject:@"Derivate 1"];
    [self.objects addObject:@"Derivate 2"];
    [self.objects addObject:@"Ellisse"];
    [self.objects addObject:@"Esponenziali e Logaritmi"];
    [self.objects addObject:@"Funzioni 1"];
    [self.objects addObject:@"Funzioni 2"];
    [self.objects addObject:@"Geometria Analitica nello Spazio"];
    [self.objects addObject:@"Geometria della Sfera"];
    [self.objects addObject:@"Geometria Euclidea dello Spazio"];
    [self.objects addObject:@"Integrali"];
    [self.objects addObject:@"Iperbole"];
    [self.objects addObject:@"Limiti di Funzioni e Continuità 1"];
    [self.objects addObject:@"Limiti di Funzioni e Continuità 2"];
    [self.objects addObject:@"Limiti di Successioni"];
    [self.objects addObject:@"Numeri Complessi"];
    [self.objects addObject:@"Numeri Naturali"];
    [self.objects addObject:@"Parabola"];
    [self.objects addObject:@"Polinomi"];
    [self.objects addObject:@"Retta"];
    [self.objects addObject:@"Statistica 1"];
    [self.objects addObject:@"Statistica 2"];
    [self.objects addObject:@"Statistica 3"];
    [self.objects addObject:@"Strutture Algebriche"];
    [self.objects addObject:@"Successioni"];
    [self.objects addObject:@"Trasformazioni Geometriche del Piano"];
    [self.objects addObject:@"Trigonometria 1"];
    [self.objects addObject:@"Trigonometria 2"];
    [self.objects addObject:@"Vettori"];
        
    } else if (tableViewCronologica) {
        
    [self.firstSectionObjects addObject:@"Numeri Naturali"];
    [self.firstSectionObjects addObject:@"Strutture Algebriche"];
    [self.firstSectionObjects addObject:@"Polinomi"];
    [self.firstSectionObjects addObject:@"Funzioni 1"];
    [self.firstSectionObjects addObject:@"Retta"];
    [self.firstSectionObjects addObject:@"Parabola"];
    [self.firstSectionObjects addObject:@"Circonferenza"];
    [self.firstSectionObjects addObject:@"Ellisse"];
    [self.firstSectionObjects addObject:@"Iperbole"];
    [self.firstSectionObjects addObject:@"Trigonometria 1"];
    [self.firstSectionObjects addObject:@"Statistica 1"];
    
    [self.secondSectionObjects addObject:@"Trigonometria 2"];
    [self.secondSectionObjects addObject:@"Trasformazioni Geometriche del Piano"];
    [self.secondSectionObjects addObject:@"Numeri Complessi"];
    [self.secondSectionObjects addObject:@"Geometria Euclidea dello Spazio"];
    [self.secondSectionObjects addObject:@"Vettori"];
    [self.secondSectionObjects addObject:@"Geometria Analitica nello Spazio"];
    [self.secondSectionObjects addObject:@"Successioni"];
    [self.secondSectionObjects addObject:@"Limiti di Successioni"];
    [self.secondSectionObjects addObject:@"Esponenziali e Logaritmi"];
    [self.secondSectionObjects addObject:@"Statistica 2"];
    
    [self.thirdSectionObjects addObject:@"Funzioni 2"];
    [self.thirdSectionObjects addObject:@"Limiti di Funzioni e Continuità 1"];
    [self.thirdSectionObjects addObject:@"Limiti di Funzioni e Continuità 2"];
    [self.thirdSectionObjects addObject:@"Derivate 1"];
    [self.thirdSectionObjects addObject:@"Derivate 2"];
    [self.thirdSectionObjects addObject:@"Integrali"];
    [self.thirdSectionObjects addObject:@"Statistica 3"];
    [self.thirdSectionObjects addObject:@"Geometria della Sfera"];
        
    } else if (tableViewAlfabeticaEsercizi) {
            
            [self.objects addObject:@"Circonferenza"];
            [self.objects addObject:@"Derivate"];
            [self.objects addObject:@"Ellisse"];
            [self.objects addObject:@"Esponenziali"];
            [self.objects addObject:@"Funzioni"];
            [self.objects addObject:@"Geometria Analitica nello Spazio"];
            [self.objects addObject:@"Geometria della sfera"];
            [self.objects addObject:@"Geometria Euclidea nello Spazio"];
            [self.objects addObject:@"Integrali"];
            [self.objects addObject:@"Iperbole"];
            [self.objects addObject:@"Limiti di Funzioni e Continuità"];
            [self.objects addObject:@"Limiti di Successioni"];
            [self.objects addObject:@"Logaritmi"];
            [self.objects addObject:@"Numeri Complessi"];
            [self.objects addObject:@"Parabola"];
            [self.objects addObject:@"Polinomi"];
            [self.objects addObject:@"Retta"];
            [self.objects addObject:@"Strutture Algebriche"];
            [self.objects addObject:@"Successioni"];
            [self.objects addObject:@"Trasformazioni Geometriche"];
            [self.objects addObject:@"Trigonometria"];
            [self.objects addObject:@"Vettori"];
    
        } else if (tableViewCronologicaEsercizi) {
            
            [self.firstSectionObjects addObject:@"Strutture Algebriche"];
            [self.firstSectionObjects addObject:@"Polinomi"];
            [self.firstSectionObjects addObject:@"Funzioni"];
            [self.firstSectionObjects addObject:@"Retta"];
            [self.firstSectionObjects addObject:@"Parabola"];
            [self.firstSectionObjects addObject:@"Circonferenza"];
            [self.firstSectionObjects addObject:@"Ellisse"];
            [self.firstSectionObjects addObject:@"Iperbole"];
            [self.firstSectionObjects addObject:@"Trigonometria"];
            
            [self.secondSectionObjects addObject:@"Trasformazioni Geometriche"];
            [self.secondSectionObjects addObject:@"Numeri Complessi"];
            [self.secondSectionObjects addObject:@"Geometria Euclidea nello Spazio"];
            [self.secondSectionObjects addObject:@"Vettori"];
            [self.secondSectionObjects addObject:@"Geometria Analitica nello Spazio"];
            [self.secondSectionObjects addObject:@"Successioni"];
            [self.secondSectionObjects addObject:@"Limiti di Successioni"];
            [self.secondSectionObjects addObject:@"Esponenziali"];
            [self.secondSectionObjects addObject:@"Logaritmi"];
            
            
            [self.thirdSectionObjects addObject:@"Limiti di Funzioni e Continuità"];
            [self.thirdSectionObjects addObject:@"Derivate"];
            [self.thirdSectionObjects addObject:@"Integrali"];
            [self.thirdSectionObjects addObject:@"Geometria della sfera"];
            
        } else if (tableViewCompiti) {
        
            [self.objects addObject:@"Ellisse - Iperbole - Trasformazioni geometriche"];
            [self.objects addObject:@"Funzioni - Derivate"];
            [self.objects addObject:@"Funzioni - Goniometria - Trigonometria"];
            [self.objects addObject:@"Funzioni - Insiemi - Probabilità"];
                [self.objects addObject:@"Funzioni - Logaritmi - Probabilità"];
            [self.objects addObject:@"Goniometria - Trasformazioni geometriche"];
                [self.objects addObject:@"Integrali - Funzioni"];
            [self.objects addObject:@"Iperbole - Ellisse - Goniometria"];
            [self.objects addObject:@"Limiti"];
            [self.objects addObject:@"Logaritmi - Piano nello spazio - Retta nello spazio"];
            [self.objects addObject:@"Numeri complessi - Trasformazioni geometriche - Funzioni"];
            [self.objects addObject:@"Numeri naturali - Parabola - Circonferenza"];
            [self.objects addObject:@"Numeri naturali - Retta nel piano"];
            [self.objects addObject:@"Parabola - Ellisse - Circonferenza"];
            [self.objects addObject:@"Trasformazioni geometriche - Goniometria"];
            [self.objects addObject:@"Simulazione Seconda Prova"];
        
        } else if (tableViewFormule) {
        
    [self.objects addObject:@"Geometria piana"];
    [self.objects addObject:@"Geometria solida"];
    [self.objects addObject:@"Insiemi"];
    [self.objects addObject:@"Insiemi numerici"];
    [self.objects addObject:@"Logaritmi"];
    [self.objects addObject:@"Logica"];
    [self.objects addObject:@"Potenze e radicali"];
    [self.objects addObject:@"Sistemi numerazione"];
    
    } else if (tableViewGlossario) {
    
    [self.objects addObject:@"Circonferenza"];
    [self.objects addObject:@"Combinazione Lineare"];
    [self.objects addObject:@"Derivata"];
    [self.objects addObject:@"Ellisse"];
    [self.objects addObject:@"Funzione di ripartizione"];
    [self.objects addObject:@"Integrale"];
    [self.objects addObject:@"Iperbole"];
    [self.objects addObject:@"Limite finito con X tendente a un valore finito"];
    [self.objects addObject:@"Limite finito di una successione"];
    [self.objects addObject:@"Limite infinito con X tendente a un valore finito"];
    [self.objects addObject:@"Limite infinito di una successione"];
    [self.objects addObject:@"Numeri Complessi"];
    [self.objects addObject:@"Parabola"];
    [self.objects addObject:@"Polinomio"];
    [self.objects addObject:@"Probabilità"];
    [self.objects addObject:@"Rapporto incrementale"];
    [self.objects addObject:@"Retta orientata, Semiretta, Diedro, Triedro"];
    [self.objects addObject:@"Struttura algebrica e gruppo"];
    [self.objects addObject:@"Successione"];

    } else if(tableViewPreferiti) {
        
        self.theFavorites = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"Key"]];
        
        int i;
        
        for(i = 0;i <= [self.theFavorites count]; i++) {
            
            int value = i - 1;
            
            if (value >= 0) {
                [self.objects addObject:[self.theFavorites objectAtIndex:value]];
            }
            
            
            
        }
        
        
        
        UIRefreshControl *refresh = [[UIRefreshControl alloc] init];
        refresh.attributedTitle = [[NSAttributedString alloc] initWithString:@"Scorri verso il basso per aggiornare..."];
        [refresh addTarget:self action:@selector(refreshMyTable:) forControlEvents:UIControlEventValueChanged];
        self.refreshControl = refresh;
        
    } else if(tableViewPreferitiEsercizi) {
        
        
        self.theFavoritesEsercizi = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"KeyEsercizi"]];
        
        
        int i;
        
        for(i = 0;i <= [self.theFavoritesEsercizi count]; i++) {
            
            int value = i - 1;
            
            if (value >= 0) {
                [self.objects addObject:[self.theFavoritesEsercizi objectAtIndex:value]];
            }
            
            
            
        }
        
        UIRefreshControl *refreshEsercizi = [[UIRefreshControl alloc] init];
        refreshEsercizi.attributedTitle = [[NSAttributedString alloc] initWithString:@"Scorri verso il basso per aggiornare..."];
        [refreshEsercizi addTarget:self action:@selector(refreshMyTableEsercizi:) forControlEvents:UIControlEventValueChanged];
        self.refreshControl = refreshEsercizi;
        
    }
    
    if ([[UIDevice currentDevice].systemVersion hasPrefix:@"7"]) {
    
     self.navigationController.navigationBar.tintColor = [UIColor redColor];
     self.searchDisplayController.searchBar.tintColor = [UIColor redColor];
        
    }
}

- (void)refreshMyTable:(UIRefreshControl *)refreshControl {
    refreshControl.attributedTitle = [[NSAttributedString alloc] initWithString:@"Aggiornamento in corso..."];
    
    self.theFavorites = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"Key"]];
    
    int i;
    self.objects = nil;
    for(i = 0;i <= [self.theFavorites count]; i++) {
        
        int value = i - 1;
        
        if (value >= 0) {
            [self.objects addObject:[self.theFavorites objectAtIndex:value]];
        }
    }
    
    [tableViewPreferiti reloadData];
    [refreshControl endRefreshing];
}

- (void)refreshMyTableEsercizi:(UIRefreshControl *)refreshControl {
    refreshControl.attributedTitle = [[NSAttributedString alloc] initWithString:@"Aggiornamento in corso..."];
    
    self.theFavoritesEsercizi = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"KeyEsercizi"]];
    
    int i;
    self.objects = nil;
    for(i = 0;i <= [self.theFavoritesEsercizi count]; i++) {
        
        int value = i - 1;
        
        if (value >= 0) {
            [self.objects addObject:[self.theFavoritesEsercizi objectAtIndex:value]];
        }
    }
    
    [tableViewPreferitiEsercizi reloadData];
    [refreshControl endRefreshing];
}

// Uncomment the following line to preserve selection between presentations.
// self.clearsSelectionOnViewWillAppear = NO;
 
// Uncomment the following line to display an Edit button in the navigation bar for this view controller.
// self.navigationItem.rightBarButtonItem = self.editButtonItem;


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)searchThroughData
{
    if (tableViewAlfabetica || tableViewCompiti || tableViewFormule || tableViewGlossario || tableViewAlfabeticaEsercizi || tableViewPreferiti || tableViewPreferitiEsercizi) {
        
        self.results = nil;
        NSPredicate *resultsPredicate = [NSPredicate predicateWithFormat:@"SELF contains [search] %@", self.searchBar.text];
        self.results = [[self.objects filteredArrayUsingPredicate:resultsPredicate] mutableCopy];
    
    } else if (tableViewCronologica || tableViewCronologicaEsercizi) {
        
        self.firstSectionResults = nil;
        self.secondSectionResults = nil;
        self.thirdSectionResults = nil;
        NSPredicate *resultsPredicate = [NSPredicate predicateWithFormat:@"SELF contains [search] %@", self.searchBar.text];
        self.firstSectionResults = [[self.firstSectionObjects filteredArrayUsingPredicate:resultsPredicate] mutableCopy];
        self.secondSectionResults = [[self.secondSectionObjects filteredArrayUsingPredicate:resultsPredicate] mutableCopy];
        self.thirdSectionResults = [[self.thirdSectionObjects filteredArrayUsingPredicate:resultsPredicate] mutableCopy];
    }
}

-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    [self searchThroughData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    if (tableViewAlfabetica || tableViewCompiti || tableViewFormule || tableViewGlossario || tableViewAlfabeticaEsercizi || tableViewPreferiti || tableViewPreferitiEsercizi) {
        return 1;
    } else return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableViewAlfabetica || tableViewCompiti || tableViewFormule || tableViewGlossario || tableViewAlfabeticaEsercizi || tableViewPreferiti || tableViewPreferitiEsercizi) {
        if (tableView == self.tableView) {
            return self.objects.count;
        } else {
            [self searchThroughData];
            return self.results.count;
        }
    } else if (tableViewCronologica || tableViewCronologicaEsercizi) {
        switch (section) {
            case 0:
                if (tableView == self.tableView) {
                    return self.firstSectionObjects.count;
                } else {
                    [self searchThroughData];
                    return self.firstSectionResults.count;
                }
                break;
                
            case 1:
                if (tableView == self.tableView) {
                    return self.secondSectionObjects.count;
                } else {
                    [self searchThroughData];
                    return self.secondSectionResults.count;
                }
                break;
                
            case 2:
                if (tableView == self.tableView) {
                    return self.thirdSectionObjects.count;
                } else {
                    [self searchThroughData];
                    return self.thirdSectionResults.count;
                }
                break;
        }
    }
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (tableViewCronologica || tableViewCronologicaEsercizi) {
        switch (section) {
            
            case 0: return @"Primo Anno";
                break;
            
            case 1: return @"Secondo Anno";
                break;
            
            case 2: return @"Terzo Anno";
                break;
            
            default:
                break;
        }
    } else if (tableViewAlfabetica || tableViewCompiti || tableViewFormule || tableViewAlfabeticaEsercizi || tableViewGlossario || tableViewPreferiti || tableViewPreferitiEsercizi) {
        return nil;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    if (tableViewAlfabetica || tableViewCompiti || tableViewFormule || tableViewGlossario || tableViewAlfabeticaEsercizi || tableViewPreferiti || tableViewPreferitiEsercizi) {
        if (tableView == self.tableView) {
            cell.textLabel.text = self.objects[indexPath.row];
        } else {
            cell.textLabel.text = self.results[indexPath.row];
        }
    } else if (tableViewCronologica || tableViewCronologicaEsercizi) {
        
        switch (indexPath.section) {
            case 0:
                if (tableView == self.tableView) {
                    cell.textLabel.text = self.firstSectionObjects[indexPath.row];
                } else {
                    cell.textLabel.text = self.firstSectionResults[indexPath.row];
                }
                break;
                
            case 1:
                if (tableView == self.tableView) {
                    cell.textLabel.text = self.secondSectionObjects[indexPath.row];
                } else {
                    cell.textLabel.text = self.secondSectionResults[indexPath.row];
                }
                break;
                
            case 2:
                if (tableView == self.tableView) {
                    cell.textLabel.text = self.thirdSectionObjects[indexPath.row];
                } else {
                    cell.textLabel.text = self.thirdSectionResults[indexPath.row];
                }
                break;
                
            default:
                break;
        }
    }
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"ShowDetail"]) {
        NSString *object = nil;
        NSIndexPath *indexPath = nil;
        
        if (tableViewAlfabetica || tableViewCompiti || tableViewFormule || tableViewGlossario || tableViewAlfabeticaEsercizi || tableViewPreferiti || tableViewPreferitiEsercizi) {
            if (self.searchDisplayController.isActive) {
                indexPath = [[self.searchDisplayController searchResultsTableView] indexPathForSelectedRow];
                object = self.results[indexPath.row];
            } else {
                indexPath = [self.tableView indexPathForSelectedRow];
                object = self.objects[indexPath.row];
            }
        }
        
        if (tableViewCronologica || tableViewCronologicaEsercizi) {
            int i;
            for (i = 0; i < 3; i++) {
                switch (indexPath.section) {
                    case 0:
                        if (self.searchDisplayController.isActive) {
                            indexPath = [[self.searchDisplayController searchResultsTableView] indexPathForSelectedRow];
                            object = self.firstSectionResults[indexPath.row];
                        } else {
                            indexPath = [self.tableView indexPathForSelectedRow];
                            object = self.firstSectionObjects[indexPath.row];
                        }
                        break;
                        
                    case 1:
                        if (self.searchDisplayController.isActive) {
                            indexPath = [[self.searchDisplayController searchResultsTableView] indexPathForSelectedRow];
                            object = self.secondSectionResults[indexPath.row];
                        } else {
                            indexPath = [self.tableView indexPathForSelectedRow];
                            object = self.secondSectionObjects[indexPath.row];
                        }
                        break;
                        
                    case 2:
                        if (self.searchDisplayController.isActive) {
                            indexPath = [[self.searchDisplayController searchResultsTableView] indexPathForSelectedRow];
                            object = self.thirdSectionResults[indexPath.row];
                        } else {
                            indexPath = [self.tableView indexPathForSelectedRow];
                            object = self.thirdSectionObjects[indexPath.row];
                        }
                        break;
                        
                    default:
                        break;
                }
            }
        }
                
        [[segue destinationViewController] setNavBarLabelContents:object];
        
        if (tableViewPreferiti || tableViewPreferitiEsercizi) {
            [[segue destinationViewController] setIsFavorite:NO];
            
        } else {
            [[segue destinationViewController] setIsFavorite:YES];
        }
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (self.searchDisplayController.isActive) {
        [self performSegueWithIdentifier:@"ShowDetail" sender:self];
    }
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:nil];
}



// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    if (tableViewPreferiti || tableViewPreferitiEsercizi) {
        return YES;
    }
    else
    {
        return NO;
    }
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        // Delete the row from the data source
        
        if (tableViewPreferiti) {
            [self.objects removeObjectAtIndex:indexPath.row];
            [self.theFavorites removeObjectAtIndex:indexPath.row];
            
            [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObjects:indexPath, nil] withRowAnimation:UITableViewRowAnimationTop];
            
            [[NSUserDefaults standardUserDefaults] setObject:self.theFavorites forKey:@"Key"];
            
        } else if(tableViewPreferitiEsercizi) {
            [self.objects removeObjectAtIndex:indexPath.row];
            [self.theFavoritesEsercizi removeObjectAtIndex:indexPath.row];
            
            [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObjects:indexPath, nil] withRowAnimation:UITableViewRowAnimationTop];
            
            [[NSUserDefaults standardUserDefaults] setObject:self.theFavoritesEsercizi forKey:@"KeyEsercizi"];
            
        }
        
        
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
    
}


/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */


//Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    if (tableViewPreferiti || tableViewPreferitiEsercizi ) {
        return YES;
        
    } else {
        return NO;
        
    }
    
}

@end
