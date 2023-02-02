//
//  fristTableViewCell.m
//  iOS暑期UI考核
//
//  Created by 李育腾 on 2022/8/5.
//

#import "fristTableViewCell.h"

@implementation fristTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    _imageOne = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"note_img4.png"]];
    [self.contentView addSubview:_imageOne];
    
    _imageTwo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guanzhu_img5.png"]];
    [self.contentView addSubview:_imageTwo];
    return  self;
}
- (void)layoutSubviews {
    _imageOne.frame = CGRectMake(0, 0, self.frame.size.width, 300);
    _imageTwo.frame = CGRectMake(self.frame.size.width - 100, 270, 80, 80);
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
