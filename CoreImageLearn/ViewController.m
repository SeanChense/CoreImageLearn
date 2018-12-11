//
//  ViewController.m
//  CoreImageLearn
//
//  Created by SeanChense on 2018/12/11.
//  Copyright © 2018 seanchense. All rights reserved.
//

#import "ViewController.h"

#import "CILSwapColorFilter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *lenna = [UIImage imageNamed:@"Lenna"];
    UIImageView *before = [[UIImageView alloc] initWithImage:lenna];
    before.frame = CGRectMake(50, 100, 128, 128);
    [self.view addSubview:before];
    
    UIImageView *after  = [[UIImageView alloc] init];
    after.frame = CGRectMake(200, 100, 128, 128);
    [self.view addSubview:after];
    
    after.image = [self processImageWithInputImage:lenna];
}

- (UIImage *)processImageWithInputImage:(UIImage *)src
{
    CILSwapColorFilter *filter = [[CILSwapColorFilter alloc] init];
    return [filter processedImageWithInputiImage:[CIImage imageWithCGImage:src.CGImage]];
}


@end
