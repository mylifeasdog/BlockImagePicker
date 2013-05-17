//
//  ViewController.m
//  BlockImagePicker
//
//  Created by Wipoo Shinsirikul on 4/12/56 BE.
//  Copyright (c) 2556 Wipoo Shinsirikul. All rights reserved.
//

#import "ViewController.h"
#import "BlockImagePickerController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Action

- (void)cameraButtonDidSelect:(id)sender
{
    void (^finishingBlock)(UIImagePickerController *picker, NSDictionary *info, UIImage *originalImage, UIImage *editedImage) = ^(UIImagePickerController *picker, NSDictionary *info, UIImage *originalImage, UIImage *editedImage)
    {
        [self.imageView setImage:originalImage];
        [picker dismissViewControllerAnimated:YES completion:^{
            ;
        }];
    };
    void (^cancelingBlock)(UIImagePickerController *picker) = ^(UIImagePickerController *picker)
    {
        void (^completionBlock)() = ^()
        {
            
        };
        [picker dismissViewControllerAnimated:YES completion:completionBlock];
    };
    BlockImagePickerController *blockImagePickerController = [[BlockImagePickerController alloc] initWithCameraSourceType:UIImagePickerControllerSourceTypeCamera
                                                                                                         onFinishingBlock:finishingBlock
                                                                                                         onCancelingBlock:cancelingBlock];
    
    
    
    
    
    void (^completionBlock)() = ^()
    {
        
    };
    [self presentViewController:blockImagePickerController animated:YES completion:completionBlock];
}

- (void)libraryButtonDidSelect:(id)sender
{
    void (^finishingBlock)(UIImagePickerController *picker, NSDictionary *info, UIImage *originalImage, UIImage *editedImage) = ^(UIImagePickerController *picker, NSDictionary *info, UIImage *originalImage, UIImage *editedImage)
    {
        [self.imageView setImage:originalImage];
        [picker dismissViewControllerAnimated:YES completion:^{
            ;
        }];
    };
    void (^cancelingBlock)(UIImagePickerController *picker) = ^(UIImagePickerController *picker)
    {
        void (^completionBlock)() = ^()
        {
            
        };
        [picker dismissViewControllerAnimated:YES completion:completionBlock];
    };
    BlockImagePickerController *blockImagePickerController = [[BlockImagePickerController alloc] initWithCameraSourceType:UIImagePickerControllerSourceTypePhotoLibrary
                                                                                                         onFinishingBlock:finishingBlock
                                                                                                         onCancelingBlock:cancelingBlock];
    
    
    
    
    
    void (^completionBlock)() = ^()
    {
        
    };
    [self presentViewController:blockImagePickerController animated:YES completion:completionBlock];
}

@end
