//
//  ViewController.m
//  MCFireworksButton_Demo
//
//  Created by admin on 16/7/5.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "ViewController.h"
#import "MCFireworksButton.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet MCFireworksButton *likeButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.likeButton.particleImage = [UIImage imageNamed:@"Sparkle"];
    self.likeButton.particleScale = 0.05;
    self.likeButton.particleScaleRange = 0.02;

}
- (IBAction)FireButtonAction:(MCFireworksButton *)sender {
    sender.selected= !sender.selected;
    if (sender.selected) {
        [self.likeButton popOutsideWithDuration:0.5];
        [self.likeButton setImage:[UIImage imageNamed:@"Like-Blue"] forState:UIControlStateNormal];
        [self.likeButton animate];
    }
    else {
        [self.likeButton popInsideWithDuration:0.4];
        [self.likeButton setImage:[UIImage imageNamed:@"Like"] forState:UIControlStateNormal];
    }
}



@end
