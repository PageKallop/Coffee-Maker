//
//  ViewController.m
//  Coffee Maker
//
//  Created by Page Kallop on 5/15/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.coffeeTextField.delegate = self;
    self.waterTextField.delegate = self;
    self.ratioTextField.delegate = self;
}


- (IBAction)calculatePressed:(id)sender {

    float water = [[self.waterTextField text] floatValue];
    float ratio = [[self.ratioTextField text] floatValue];
    
    float coffee = water / ratio;
    
    NSString *coffeeText = [NSString stringWithFormat: @"%f", coffee];
    
    self.coffeeTextField.text = coffeeText;
     
    _ratioTextField.resignFirstResponder;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    return YES;
}
@end
