//
//  InfoViewController.h
//  DWallet
//
//  Created by Bradley Slayter on 2/5/14.
//  Copyright (c) 2014 Brad Slayter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ServerAddView.h"
#import "NSObject+FilePaths.h"

@interface InfoViewController : UITableViewController <ServerAddDelegate> {
	NSDictionary *server;
}

@end
