# Google Analytics Example for iOS

This is an example xcode project showing how Google Analytics can be used in iOS applications. The example on Google's site do not include ARC (automatic reference counting).

This example works on iOS 5+ using xcode v4.6 and uses the Google Analytics v2.0 beta-4 SDK. This version of the SDK has changed considerably if you were using v1. Even though it's beta it seems to be the version that Google are currently pushing, there is no option to download previous versions.

One of the biggest difference between this SDK and the previous edition is the fact that you need to create a Google Analytics tracking id which is for an **App** not a website. I spent ages trying to figure out why I wasn't able to get any page views registered on an existing tracking id, save yourself some time and just create a new tracking id.

This example is pretty self explanitory, clone the git repo and fire it up in xcode. It should just work.

What I did...
=============

1.  Download the SDK from Google
2.  Add the unziped files to your xcode project - in this example I've put the code in `Frameworks > Google Analytics v2.0`
    *	There is a file called `libGoogleAnalytics_debug.a` - you don't need this.
3.  In your project add the frameworks for `CoreData` and `SystemConfiguration`
4.  Have a look at `AppDelegate.m` this wires up the tracker - if you are you going to use this code for your own app then **make sure you replace the tracking id** whcih your own.
5.  A standard `ViewController` can be tracked by implementing `GAITrackedViewController` and then defining the value for `trackedViewName`:

    - (void)viewDidLoad
    {
        [super viewDidLoad];
    	// Do any additional setup after loading the view, typically from a nib.
        self.trackedViewName = @"Google Analytics Example ViewController";
    }

see `ViewController.h` and `ViewController.m` as examples.

6.  If you want to track things like button presses use an `event`:

    // example to send event
    - (IBAction)buttonPressed:(id)sender {
        [[GAI sharedInstance].defaultTracker sendEventWithCategory:@"Button Pressed"
                                                        withAction:@"Next Controller
                                                         withLabel:@"Press me to go another ViewController"                                               withValue:nil];
    }
    
These are pretty bare instructions, the best thing would be to have a look at the example project and have a play around with it. I've not spent very long on this and if you think that it can be improved to help others then please fork and submit a patch. I would be interested in any feedback that you have.

Cheers!

