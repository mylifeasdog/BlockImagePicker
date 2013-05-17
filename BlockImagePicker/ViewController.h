//
//  ViewController.h
//  BlockImagePicker
//
//  Created by Wipoo Shinsirikul on 4/12/56 BE.
//  Copyright (c) 2556 Wipoo Shinsirikul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
}

@property (nonatomic, strong) IBOutlet UIImageView *imageView;

- (IBAction)cameraButtonDidSelect:(id)sender;
- (IBAction)libraryButtonDidSelect:(id)sender;

@end
