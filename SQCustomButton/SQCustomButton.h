//
//  SQCustomButton.h
//  SQCustomButton
//
//  Created by 王俊钢 on 2017/10/14.
//  Copyright © 2017年 wangjungang. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger,SQCustomButtonType) {
    SQCustomButtonLeftImageType,//左图标，右文字
    SQCustomButtonTopImageType,//上图标，下文字
    SQCustomButtonRightImageType//右图标，左文字
};

@interface SQCustomButton : UIView
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, assign) BOOL isShowSelectBackgroudColor;//是否展示点击效果

@property (nonatomic, copy)void(^touchBlock)(SQCustomButton *button);



/*
 初始化
 imageSize  图标大小
 isAutoWidth 是否根据文字长度自适应
 */
- (id)initWithFrame:(CGRect)frame
               type:(SQCustomButtonType)type
          imageSize:(CGSize)imageSize
          midmargin:(CGFloat)midmargin;

//点击响应
- (void)touchAction:(void(^)(SQCustomButton *button))block;


NS_ASSUME_NONNULL_END
@end
