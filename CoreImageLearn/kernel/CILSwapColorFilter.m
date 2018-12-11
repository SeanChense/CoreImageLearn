//
//  CILSwapColorFilter.m
//  CoreImageLearn
//
//  Created by SeanChense on 2018/12/11.
//  Copyright © 2018 seanchense. All rights reserved.
//

#import "CILSwapColorFilter.h"

@implementation CILSwapColorFilter

- (CIKernel *)swapColorKernel
{
    CIKernel *kernel = [CIKernel kernelWithString:
                        @"kernel vec4 swapRGB (__sample s)\
                        {\
                        return s.bgra;\
                        }"];
    return kernel;
}

- (CIImage *)outputImage
{
    CGRect rect = self.inputImage.extent;
    return [[self swapColorKernel] applyWithExtent:rect
                                       roiCallback:^CGRect(int index, CGRect destRect) {
                                           return destRect;
                                       }
                                         arguments:@[self.inputImage]];
}

- (UIImage *)processedImageWithInputiImage:(CIImage *)inputImage
{
    self.inputImage = inputImage;
    
    CIContext *context = [CIContext context];
    
    CIImage *outImage = [self outputImage];
    
    return [UIImage imageWithCGImage:[context createCGImage:outImage fromRect:outImage.extent]];
}

@end
