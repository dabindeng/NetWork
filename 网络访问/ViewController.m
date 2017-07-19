//
//  ViewController.m
//  网络访问
//
//  Created by DB_MAC on 2017/7/13.
//  Copyright © 2017年 db. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib
    
    // 1 访问资源 首先需要  URL
    NSURL *url = [NSURL URLWithString:@"http://127.0.0.1/demo.json"];
    /// 2 建立一个请求  告诉服务器 想要的资源  已经附加的信息
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    //添加附加信息 请求头信息
//    [request setValue:@"header" forHTTPHeaderField:@"User-Agent"];
    //  3 建立网络连接 将请求发送给服务器
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) {
        NSString *json = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"%@",json);
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
