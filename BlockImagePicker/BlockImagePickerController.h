//
//  BlockImagePickerController.h
//  BlockImagePicker
//
//  Created by Wipoo Shinsirikul on 4/12/56 BE.
//  Copyright (c) 2556 Wipoo Shinsirikul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BlockImagePickerController : UIImagePickerController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
    
}

- (id)initWithCameraSourceType:(UIImagePickerControllerSourceType)source onFinishingBlock:(void (^)(UIImagePickerController *picker, NSDictionary *info, UIImage *originalImage, UIImage *editedImage))finishingBlock onCancelingBlock:(void (^)(UIImagePickerController *picker))cancelingBlock;

@end
