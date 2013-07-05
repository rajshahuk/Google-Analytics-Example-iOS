//
//  ViewController.m
//  Google Analytics Example
//
//  Created by Rajesh Shah on 15/06/2013.
//  Copyright (c) 2013 12nines.com. All rights reserved.
//

#import "ViewController.h"
// import the Google Analytics Header
#import "GAI.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.trackedViewName = @"Google Analytics Example ViewController";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// example to send event
- (IBAction)buttonPressed:(id)sender {
    [[GAI sharedInstance].defaultTracker sendEventWithCategory:@"Button Pressed"
                                                    withAction:@"Next Controller"
                                                     withLabel:@"Press me to go another ViewController"                                               withValue:nil];
}

@end
