//
//  FamilyMember.h
//  pedigree
//
//  Created by jtq6 on 3/21/13.
//  Copyright (c) 2013 CDC Informatics R&D Lab. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Relative : NSObject

@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *relationship;

-(id)initWithRelationshipNames:(NSString *)newRelationship lastName:(NSString *)newLastName firstName:(NSString *)newFirstName;


@end