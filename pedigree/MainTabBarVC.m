//
//  MainTabBarVC.m
//  pedigree
//
//  Created by jtq6 on 9/25/13.
//  Copyright (c) 2013 CDC Informatics R&D Lab. All rights reserved.
//

#import "MainTabBarVC.h"
#import "Relative.h"
#import "Person.h"
#import "ContractedDisease.h"

@interface MainTabBarVC ()

@end

@implementation MainTabBarVC

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
    //[self loadTestData];
    [self createMyself];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)loadTestData
{
    
  /*  Relative *newRelative = [NSEntityDescription insertNewObjectForEntityForName:@"Relative" inManagedObjectContext:APP_MGR.managedObjectContext ];
    newRelative.lastName = @"Smithereen";
    newRelative.firstName = @"John";
    newRelative.relationDescription = @"Father";
    
    NSError *error = nil;
    [APP_MGR.managedObjectContext save:&error];
    
    if (error)
    {
        DebugLog(@"Problem loading test data: %@", error);
    }
   */
    
 /*   Person *me = [NSEntityDescription insertNewObjectForEntityForName:@"Person"
                                               inManagedObjectContext:APP_MGR.managedObjectContext];
   // me.dateOfBirth =
    me.ethnicity = [NSNumber numberWithInt:1];
    me.firstName = @"John";
    me.gender = [NSNumber numberWithInt:1];
    me.height = [NSNumber numberWithDouble:5.2];
    me.isAdopted = [NSNumber numberWithInt:0];
    me.isIdenticalTwin = [NSNumber numberWithInt:0];
    me.isLiving = [NSNumber numberWithInt:1];
    me.isTwin = [NSNumber numberWithInt:0];
    me.lastName = @"Doe";
    me.race = [NSNumber numberWithInt:5];
    me.weight = [NSNumber numberWithInt:120];
    
    NSError *error = nil;
    [APP_MGR.managedObjectContext save:&error];
    
    if (error)
    {
        DebugLog(@"Problem loading test data: %@", error);
    }
  */
    
 /*   Relative *newRelative = [NSEntityDescription insertNewObjectForEntityForName:@"Relative" inManagedObjectContext:APP_MGR.managedObjectContext ];
    newRelative.lastName = @"Doe";
    newRelative.firstName = @"John";
    newRelative.relationDescription = @"Self";
    
    newRelative.ethnicity = [NSNumber numberWithInt:1];
    newRelative.firstName = @"John";
    newRelative.gender = [NSNumber numberWithInt:1];
    newRelative.height = [NSNumber numberWithDouble:5.2];
    newRelative.isAdopted = [NSNumber numberWithInt:0];
    newRelative.isIdenticalTwin = [NSNumber numberWithInt:0];
    newRelative.isLiving = [NSNumber numberWithInt:1];
    newRelative.isTwin = [NSNumber numberWithInt:0];
    newRelative.lastName = @"Doe";
    newRelative.race = [NSNumber numberWithInt:5];
    newRelative.weight = [NSNumber numberWithInt:120];
    
    NSError *error = nil;
    [APP_MGR.managedObjectContext save:&error];
    
    if (error)
    {
        DebugLog(@"Problem loading test data: %@", error);
    }
*/

}

-(void) createMyself
{
    Relative *_newRelative;
    
    if (_newRelative == nil) {
        _newRelative = [NSEntityDescription insertNewObjectForEntityForName:@"Relative" inManagedObjectContext:APP_MGR.managedObjectContext ];
    }
    
    _newRelative.firstName = @"Myself";
    _newRelative.lastName = @"Myself";
    _newRelative.relationDescription = @"Myself";
    
    _newRelative.isLiving = [NSNumber numberWithBool:YES];
    _newRelative.gender = [NSNumber numberWithInteger:0];
    _newRelative.isTwin = [NSNumber numberWithBool:NO];
    _newRelative.isIdenticalTwin = [NSNumber numberWithBool:NO];
    _newRelative.isAdopted = [NSNumber numberWithBool:NO];
    
    _newRelative.areParentsRelatedOtherThanMarraige = [NSNumber numberWithBool:NO];
    
    NSError *error = nil;
    [APP_MGR.managedObjectContext save:&error];
    
    if (error)
    {
        DebugLog(@"Problem saving the relative: %@", error);
    }

    
}

@end
