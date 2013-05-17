BlockImagePicker
=========

This BlockImagePickerController Class inherits form UIImagePickerController using blocks instead of delegate methods.


How To Use It
-------------

```objective-c

#import "BlockImagePickerController.h"

...

{
	...
	
	void (^finishingBlock)(UIImagePickerController *picker, NSDictionary *info, UIImage *originalImage, UIImage *editedImage) = ^(UIImagePickerController *picker, NSDictionary *info, UIImage *originalImage, UIImage *editedImage)
    {
        /*
        	Same as - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
        	but providing [info objectForKey:UIImagePickerControllerOriginalImage] as originalImage and [info objectForKey:UIImagePickerControllerEditedImage] as editedImage to make it easier to use
        */
    };
    void (^cancelingBlock)(UIImagePickerController *picker) = ^(UIImagePickerController *picker)
    {
    	/*
			Same as - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
    	*/
    };
    BlockImagePickerController *blockImagePickerController = [[BlockImagePickerController alloc] initWithCameraSourceType:UIImagePickerControllerSourceTypeCamera
                                                                                                         onFinishingBlock:finishingBlock
                                                                                                         onCancelingBlock:cancelingBlock];
    
    void (^completionBlock)() = ^()
    {
        
    };
    [self presentViewController:blockImagePickerController animated:YES completion:completionBlock];
    
    ...
}

...

```
