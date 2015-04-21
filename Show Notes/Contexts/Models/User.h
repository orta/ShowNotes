//
//  User.h
//  Show Notes
//
//  Created by Orta on 4/20/15.
//  Copyright (c) 2015 Artsy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject
@property (nonatomic, copy, readonly) NSString *userID;

+ (User *)currentUser;
@end
