//
//  ViewController.m
//  TwoPlayerMath
//
//  Created by Benson Huynh on 2015-10-26.
//  Copyright © 2015 Benson Huynh. All rights reserved.
//

#import "ViewController.h"
#import "GameModel.h"

@interface ViewController ()

@property (nonatomic, strong) GameModel *gameModel;
@property (strong, nonatomic) IBOutlet UILabel *displayAnswer;

@property (nonatomic) NSNumber *pressedNumber;
@property (nonatomic) NSString *answer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    GameModel *gameModel = [[GameModel alloc] init];
    
    self.answer = @"";
}



- (IBAction)number1:(id)sender {
    
    self.pressedNumber = [NSNumber numberWithInteger:1];
    [self constructAnswer:self.pressedNumber];
    
}

- (IBAction)number2:(id)sender {
    self.pressedNumber = [NSNumber numberWithInteger:2];
    [self constructAnswer:self.pressedNumber];

}

- (IBAction)number3:(id)sender {
}

- (IBAction)number4:(id)sender {
}

- (IBAction)number5:(id)sender {
}

- (IBAction)number6:(id)sender {
}


- (IBAction)number7:(id)sender {
}


- (IBAction)number8:(id)sender {
}

- (IBAction)number9:(id)sender {
}

- (IBAction)number0:(id)sender {
}

- (NSInteger) constructAnswer: (NSNumber *)pressedNumber {
    
    self.answer =[NSString stringWithFormat:@"%@%li", self.answer, pressedNumber.integerValue];
    self.displayAnswer.text = self.answer;
    
    return self.answer.integerValue;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
