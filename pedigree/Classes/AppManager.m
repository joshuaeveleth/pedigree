//
//  AppManager.m
//  pedigree
//
//  Created by jtq6 on 3/21/13.
//  Copyright (c) 2013 CDC Informatics R&D Lab. All rights reserved.
//

#import "AppManager.h"
#import "AppDelegate.h"
static AppManager *sharedAppManager = nil;

@implementation AppManager


#pragma mark Singleton Methods
+ (id)singletonAppManager {
	@synchronized(self) {
		if(sharedAppManager == nil)
			sharedAppManager = [[self alloc] init];
	}
	return sharedAppManager;
}

+ (id)allocWithZone:(NSZone *)zone {
	@synchronized(self) {
		if(sharedAppManager == nil)  {
			sharedAppManager = [super allocWithZone:zone];
			return sharedAppManager;
		}
	}
	return nil;
}

- (id)copyWithZone:(NSZone *)zone {
	return self;
}


- (id)init {
	if ((self = [super init])) {
		self.appName = @"Pedigree";
        self.agreedWithEula = FALSE;
        self.tableFont = [UIFont boldSystemFontOfSize: 16];
  //      self.famTree = [[FamilyTree alloc] init];
   //     [self.famTree loadTestData];
        
        // get Core Data references
        AppDelegate *appDel = (AppDelegate *)[UIApplication sharedApplication].delegate;
        self.managedObjectContext = appDel.managedObjectContext;
        self.managedObjectModel = appDel.managedObjectModel;
        self.persistentStoreCoordinator = appDel.persistentStoreCoordinator;
	}
	return self;
}

-(NSArray*)getAllPeople
{
    // initializing NSFetchRequest
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    
    //Setting Entity to be Queried
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Person"
                                              inManagedObjectContext:self.managedObjectContext];
    [fetchRequest setEntity:entity];
    NSError* error;
    
    // Query on managedObjectContext With Generated fetchRequest
    NSArray *fetchedRecords = [self.managedObjectContext executeFetchRequest:fetchRequest error:&error];
    
    if (error) {
        DebugLog(@"Attempt to fetch Core Data Person entities failed.");

    }
    // Returning Fetched Records
    return fetchedRecords;
}

-(Person *)getPerson{
    
    // initializing NSFetchRequest
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    
    //Setting Entity to be Queried
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Person"
                                              inManagedObjectContext:self.managedObjectContext];
    [fetchRequest setEntity:entity];
    NSError* error;
    
    // Query on managedObjectContext With Generated fetchRequest
    NSArray *fetchedRecords = [self.managedObjectContext executeFetchRequest:fetchRequest error:&error];
    
    if (error) {
        DebugLog(@"Attempt to fetch Core Data Person entities failed.");
    }
    
    Person *fetchedPerson;
    // Returning Fetched Person
    if (fetchedRecords != NULL) {
        fetchedPerson = [fetchedRecords objectAtIndex:1];
    }
    return fetchedPerson;
   
}

-(BOOL)isDebugInfoEnabled
{
    // Get user preference
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL enabled = [defaults boolForKey:@"enableDebugInfo"];
    return enabled;
    
}
@end
