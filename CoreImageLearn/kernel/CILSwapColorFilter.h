//
//  CILSwapColorFilter.h
//  CoreImageLearn
//
//  Created by SeanChense on 2018/12/11.
//  Copyright © 2018 seanchense. All rights reserved.
//

#import <CoreImage/CoreImage.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CILSwapColorFilter : CIFilter

@property (nonatomic, strong) CIImage *inputImage;

- (UIImage *)processedImageWithInputiImage:(CIImage *)inputImage;
@end

NS_ASSUME_NONNULL_END
