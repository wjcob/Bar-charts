//
//  ViewController.m
//  BarChartDemo
//
//  Created by wanglei on 16/6/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "DVBarChartView.h"
@interface ViewController ()<DVBarChartViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    DVBarChartView *chartView = [[DVBarChartView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 300)];
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(10, 3, 30, 30)];
    label.text = @"(w)";
    label.textColor = [UIColor blackColor];
    [chartView addSubview:label];
    [self.view addSubview:chartView];
    chartView.barColor  = [UIColor colorWithHue:0.58 saturation:0.80 brightness:0.80 alpha:1.00];
    chartView.barSelectedColor =[UIColor colorWithHue:0.58 saturation:0.80 brightness:0.80 alpha:1.00];
    chartView.axisColor =[UIColor blackColor];
    chartView.backColor =[UIColor colorWithHue:0.57 saturation:0.06 brightness:0.95 alpha:1.00];
    chartView.textColor = [UIColor blackColor];
    chartView.barWidth = 37;
    chartView.barGap = 20;
    chartView.xAxisTextGap = 10;
    chartView.yAxisViewWidth = 52;
    chartView.showPointLabel = YES;
    chartView.numberOfYAxisElements = 5;
    chartView.xAxisTitleArray = @[@"营业性补助",@"附属物补偿", @"过渡期补助费", @"过渡费", @"搬家费", @"其他补偿款", @"房屋补偿费"];
    
    chartView.xValues = @[@10004, @18273, @19006, @19080, @10010, @10000, @10000];
    chartView.delegate = self;
    chartView.yAxisMaxValue = 20000;
    //    chartView.barUserInteractionEnabled = NO;
    [chartView draw];

    
    
    
    
    
  }
- (void)barChartView:(DVBarChartView *)barChartView didSelectedBarAtIndex:(NSInteger)index {
    
    NSLog(@"%ld", index);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
