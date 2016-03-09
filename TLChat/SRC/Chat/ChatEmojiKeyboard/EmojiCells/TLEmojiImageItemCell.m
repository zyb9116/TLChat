//
//  TLEmojiImageItemCell.m
//  TLChat
//
//  Created by 李伯坤 on 16/2/20.
//  Copyright © 2016年 李伯坤. All rights reserved.
//

#import "TLEmojiImageItemCell.h"
#import "UIImage+Color.h"

@interface TLEmojiImageItemCell ()

@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation TLEmojiImageItemCell

- (id) initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self.contentView addSubview:self.imageView];
        [self.bgView setBackgroundImage:[UIImage imageWithColor:[UIColor colorWithWhite:0.7 alpha:0.7]] forState:UIControlStateHighlighted];
        [self p_addMasonry];
    }
    return self;
}

- (void)setEmojiItem:(TLEmoji *)emojiItem
{
    [super setEmojiItem:emojiItem];
    [self.imageView setImage:emojiItem.path == nil ? nil : [UIImage imageNamed:emojiItem.path]];
}

#pragma mark - Private Methods -
- (void)p_addMasonry
{
    [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.contentView).mas_offset(UIEdgeInsetsMake(2, 2, 2, 2));
    }];
}

#pragma mark - Getter -
- (UIImageView *)imageView
{
    if (_imageView == nil) {
        _imageView = [[UIImageView alloc] init];
    }
    return _imageView;
}

@end
