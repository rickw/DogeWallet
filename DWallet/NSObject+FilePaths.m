//
//  NSObject+FilePaths.m
//  DWallet
//
//  Created by Rick Windham on 7/2/14.
//  Copyright (c) 2014 Brad Slayter. All rights reserved.
//

#import "NSObject+FilePaths.h"

@implementation NSObject (FilePaths)
- (NSString *)getServerPath {
    return [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject] stringByAppendingPathComponent:@"server.plist"];
}
@end
