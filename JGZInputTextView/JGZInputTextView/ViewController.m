//
//  ViewController.m
//  JGZInputTextView
//
//  Created by 江贵铸 on 2016/12/25.
//  Copyright © 2016年 江贵铸. All rights reserved.
//

#import "ViewController.h"
#import "JGZInputTextView.h"
@interface ViewController ()
@property (nonatomic,strong) UIView *view1;
@end

@implementation ViewController
//写个高度变化的回调block，再写个高度变化是向上还是向下
- (void)viewDidLoad {
    [super viewDidLoad];
    JGZInputTextView *inputtextview = [[JGZInputTextView alloc] initWithFrame:CGRectMake(50, 150, 210, 150) font:[UIFont systemFontOfSize:14]];
    inputtextview.TextViewVerticallyStyle = TextViewVerticallyCenter;
    inputtextview.directiontype = DirectionDown;
    inputtextview.MAXHeight = 160;
    inputtextview.PlaceholdLabel.text = @"请输入备注";
    inputtextview.borderColor=[UIColor redColor];
    [inputtextview getInputTextViewHeightBlock:^(NSString *text, CGFloat InputViewHeight) {
      self.view1.frame = CGRectMake(50, CGRectGetMaxY(inputtextview.frame)+10, 180, 40);
    }];
    [self.view addSubview:inputtextview];
    
    UIView *view = [[UIView alloc] init];
    view.frame = CGRectMake(50, CGRectGetMaxY(inputtextview.frame)+10, 180, 40);
    self.view1 = view;
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
