//
//  ViewController.m
//  PassingData
//
//  Created by user on 10/25/17.
//  Copyright © 2017 user. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController (){
    int inches;
}
@property (weak, nonatomic) IBOutlet UITextField *user;
@property (weak, nonatomic) IBOutlet UITextField *feet;
@property (weak, nonatomic) IBOutlet UITextField *inch;
@end

@implementation FirstViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    UITapGestureRecognizer *tap= [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tap];
    // Do any additional setup after loading the view, typically from a nib.0
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)dismissKeyboard{
    [self.user resignFirstResponder];
    [self.feet resignFirstResponder];
    [self.inch resignFirstResponder];
}
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    inches =([self.feet.text integerValue] *12)+[self.inch.text integerValue];
    SecondViewController* destination = [segue destinationViewController];
    //self.user.text;
    
    destination.fee= self.feet.text;
    destination.inc= self.inch.text;
    destination.username = [NSString stringWithFormat:@"Hello, %@" , self.user.text];
    destination.hight = [NSString stringWithFormat:@"%i", inches];
}
- (IBAction)ReturnFromScenceTwo:(UIStoryboardSegue *) unwindSegue{
    self.user.text = NULL;
    self.inch.text = NULL;
    self.feet.text = NULL;
}


@end
