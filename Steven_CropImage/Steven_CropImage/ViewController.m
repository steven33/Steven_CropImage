//
//  ViewController.m
//  Steven_CropImage
//
//  Created by qugo on 16/10/13.
//  Copyright © 2016年 steven. All rights reserved.
//

#import "ViewController.h"
#import "StevenImageCrop.h"

@interface ViewController ()<MLImageCropDelegate>
@property (strong, nonatomic) UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *buton = [[UIButton alloc] initWithFrame:CGRectMake(0, 60, 80, 40)];
    buton.backgroundColor = [UIColor redColor];
    [buton addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buton];
    
    self.imageView = [[UIImageView alloc] init];
    [self.view addSubview:self.imageView];
    
}
- (void)buttonAction
{
    StevenImageCrop *imageCrop = [[StevenImageCrop alloc]init];
    imageCrop.delegate = self;
    imageCrop.ratioOfWidthAndHeight = 1;
    imageCrop.image = [UIImage imageNamed:@"temp.jpg"];
    [self.navigationController pushViewController:imageCrop animated:YES];
    
}
#pragma mark - crop delegate
- (void)cropImage:(UIImage*)cropImage forOriginalImage:(UIImage*)originalImage
{
    self.imageView.image = cropImage;
    self.imageView.frame = CGRectMake(0, 120, self.view.frame.size.width, self.view.frame.size.width*(cropImage.size.height/cropImage.size.width));
}
@end
