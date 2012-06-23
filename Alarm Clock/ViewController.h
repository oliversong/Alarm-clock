//
//  ViewController.h
//  Alarm Clock
//
//  Created by Oliver Song on 6/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIDatePicker *dateTimePicker;
    IBOutlet UILabel *labelDawg;
}
-(void) presentMessage: (NSString *) message;
-(void) scheduleLocalNotificationWithDate: (NSDate *) fireDate;
-(IBAction)alarmSetButtonTapped:(id)sender;
-(IBAction)alarmCancelButtonTapped:(id)sender;
@end
