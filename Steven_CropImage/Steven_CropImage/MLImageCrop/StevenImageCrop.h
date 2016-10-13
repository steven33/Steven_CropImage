//
//  StevenImageCrop.h
//  Steven_CropImage
//
//  Created by qugo on 16/10/13.
//  Copyright © 2016年 steven. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol MLImageCropDelegate <NSObject>

- (void)cropImage:(UIImage*)cropImage forOriginalImage:(UIImage*)originalImage;

@end
@interface StevenImageCrop : UIViewController
//下面俩哪个后面设置，即是哪个有效
@property(nonatomic,strong) UIImage *image;
@property(nonatomic,strong) NSURL *imageURL;

@property(nonatomic,weak) id<MLImageCropDelegate> delegate;
@property(nonatomic,assign) CGFloat ratioOfWidthAndHeight; //截取比例，宽高比
@property (nonatomic,assign)BOOL isXuanzuan;

- (void)showWithAnimation:(BOOL)animation;

@end
