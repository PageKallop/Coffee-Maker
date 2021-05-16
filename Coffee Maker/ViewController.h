//
//  ViewController.h
//  Coffee Maker
//
//  Created by Page Kallop on 5/15/21.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *waterTextField;

@property (weak, nonatomic) IBOutlet UITextField *ratioTextField;

@property (weak, nonatomic) IBOutlet UITextField *coffeeTextField;

-(IBAction)calculatePressed:(id)sender;


@end

