//
//  Debug.h
//  pedigree
//
//  Created by jtq6 on 3/21/13.
//  Copyright (c) 2013 CDC Informatics R&D Lab. All rights reserved.
//

#ifndef pedigree_Debug_h
#define pedigree_Debug_h

#ifndef DEBUG
//#define DEBUG
#else
#endif

#ifdef DEBUG
#define DebugLog(fmt, ...) NSLog((@"%s[Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#define LineLog() DebugLog(@"");
#else
#define DebugLog(...)
#define LineLog(...)
#endif

// Info Log always displays output regardless of the DEBUG setting
#define InfoLog(fmt, ...) NSLog((@"%s[Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);


#endif
