//
//  ViewController.m
//  Alarm Clock
//
//  Created by Oliver Song on 6/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    dateTimePicker.date = [NSDate date];
}

- (void)scheduleLocalNotificationWithDate:(NSDate *)fireDate
{
    UILocalNotification *notification = [[UILocalNotification alloc] init];
    
    notification.fireDate = fireDate;
    notification.alertBody = @"Wake up";
    notification.soundName = @"ma.mp3";
    [[UIApplication sharedApplication] scheduleLocalNotification:notification];
}
- (void)presentMessage:(NSString *)message
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alarm Clock" message: message delegate:nil cancelButtonTitle:@"Go away" otherButtonTitles:nil ];
    
    [alert show];
}
- (void)alarmSetButtonTapped:(id)sender
{
    NSLog(@"hello");
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.locale = [NSLocale systemLocale];
    dateFormatter.timeStyle = NSDateFormatterShortStyle;
    dateFormatter.dateStyle = NSDateFormatterShortStyle;
    
    NSString *dateTimeString = [dateFormatter stringFromDate: dateTimePicker.date ];
    NSLog( @"Alarm Set button tapped: %@", dateTimeString);
    NSMutableString *watdafuq = [NSMutableString stringWithString:@"Alarm set to: "];
    [watdafuq appendString:dateTimeString];
    labelDawg.text = watdafuq;
    [self scheduleLocalNotificationWithDate:dateTimePicker.date];
    
    //TODO: make sure you can only set one alarm
}

- (void)alarmCancelButtonTapped:(id)sender
{
    NSLog(@"goodbye");
    [[UIApplication sharedApplication] cancelAllLocalNotifications];
    labelDawg.text=@"No alarm set"; 
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
