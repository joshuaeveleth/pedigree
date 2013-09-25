//
//  Person.h
//  pedigree
//
//  Created by jtq6 on 9/24/13.
//  Copyright (c) 2013 CDC Informatics R&D Lab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Person : NSManagedObject

@property (nonatomic, retain) NSDate * dateOfBirth;
@property (nonatomic, retain) NSString * firstName;
@property (nonatomic, retain) NSNumber * gender;
@property (nonatomic, retain) NSNumber * isAdopted;
@property (nonatomic, retain) NSNumber * isIdenticalTwin;
@property (nonatomic, retain) NSNumber * isLiving;
@property (nonatomic, retain) NSNumber * isTwin;
@property (nonatomic, retain) NSString * lastName;
@property (nonatomic, retain) NSManagedObject *contractedDisease;

@end