//
//  ViewController.m
//  四个笑脸隐藏和显示
//
//  Created by 宓珂璟 on 16/5/31.
//  Copyright © 2016年 宓珂璟. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *backView; //!< 背景View
@property (weak, nonatomic) IBOutlet UIImageView *image1; //!< 左1
@property (weak, nonatomic) IBOutlet UIImageView *image2; //!< 左2
@property (weak, nonatomic) IBOutlet UIImageView *image3; //!< 左3
@property (weak, nonatomic) IBOutlet UIImageView *image4; //!< 左4
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *firstConstraint; //!< 左1 宽度约束
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *secondContraint; //!< 左2 宽度约束
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *thirdConstraint; //!< 左3 宽度约束
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *foutContraint; //!< 左4 宽度约束


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

// 宽度为0，不就是隐藏了么
- (IBAction)click:(UISwitch *)sender
{
    switch (sender.tag) {
        case 200:
            if (!sender.isOn)
            {
                self.firstConstraint.constant = 0;
            }
            else
            {
                self.firstConstraint.constant = 50;
            }
            break;
        case 201:
            if (!sender.isOn)
            {
                self.secondContraint.constant = 0;
            }
            else
            {
                self.secondContraint.constant = 50;
            }
            break;
        case 202:
            if (!sender.isOn)
            {
                self.thirdConstraint.constant = 0;
            }
            else
            {
                self.thirdConstraint.constant = 50;
            }
            break;
        case 203:
            if (!sender.isOn)
            {
                self.foutContraint.constant = 0;
            }
            else
            {
                self.foutContraint.constant = 50;
            }
            break;
        default:
            break;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
