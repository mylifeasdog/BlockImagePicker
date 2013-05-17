//
//  BlockImagePickerController.m
//  BlockImagePicker
//
//  Created by Wipoo Shinsirikul on 4/12/56 BE.
//  Copyright (c) 2556 Wipoo Shinsirikul. All rights reserved.
//

#import "BlockImagePickerController.h"

@interface BlockImagePickerController ()
{
    
}

@property (nonatomic, copy) void (^finishingBlock)(UIImagePickerController *picker, NSDictionary *info, UIImage *originalImage, UIImage *editedImage);
@property (nonatomic, copy) void (^cancelingBlock)(UIImagePickerController *picker);

@end

@implementation BlockImagePickerController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}

- (id)initWithCameraSourceType:(UIImagePickerControllerSourceType)source onFinishingBlock:(void (^)(UIImagePickerController *picker, NSDictionary *info, UIImage *originalImage, UIImage *editedImage))finishingBlock onCancelingBlock:(void (^)(UIImagePickerController *picker))cancelingBlock
{
    self = [super init];
    if (self)
    {
        [self setSourceType:source];
        [self setFinishingBlock:finishingBlock];
        [self setCancelingBlock:cancelingBlock];
        [self setDelegate:self];
    }
    return  self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    self.finishingBlock(picker, info, ((UIImage *)[info objectForKey:UIImagePickerControllerOriginalImage]), ((UIImage *)[info objectForKey:UIImagePickerControllerEditedImage]));
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    self.cancelingBlock(picker);
}

@end
