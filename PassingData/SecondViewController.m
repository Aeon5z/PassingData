//
//  SecondViewController.m
//  PassingData
//
//  Created by user on 10/25/17.
//  Copyright © 2017 user. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController (){
    double meters;
}
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblHeight;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lblName.text = self.username;
    meters=[self.hight integerValue]*0.01;
    self.lblHeight.text = [NSString stringWithFormat:@"Your height is %@\' %@\" or  %.2f meters" , self.fee, self.inc, meters];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
