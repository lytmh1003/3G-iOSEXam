//
//  ThirdTableViewCell.m
//  iOS暑期UI考核
//
//  Created by 李育腾 on 2022/8/5.
//

#import "ThirdTableViewCell.h"

@implementation ThirdTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    UIColor* newColor = [UIColor colorWithRed:0.4 green:0.6 blue:0.8 alpha:1.0f];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    _imageViewOne = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"img2.jpeg"]];
    _imageViewTwo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"IMG_0134.JPG"]];
    _imageViewThree = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"IMG_9851.JPG"]];
    [self.contentView addSubview:_imageViewTwo];
    [self.contentView addSubview:_imageViewOne];
    [self.contentView addSubview:_imageViewThree];
    _labelOne = [[UILabel alloc] init];
    _labelOne.text = @"3G-iOS";
    _labelOne.font = [UIFont systemFontOfSize:18];
    _labelOne.textColor = newColor;
    [self.contentView addSubview:_labelOne];
    
    
    _labelTwo = [[UILabel alloc] init];
    _labelTwo.text = @"不出所料，我们组考核G了！";
    _labelTwo.font = [UIFont systemFontOfSize:20];
    _labelTwo.textColor = [UIColor blackColor];
    [self.contentView addSubview:_labelTwo];
    
    _labelThree = [[UILabel alloc] init];
    _labelThree.text = @"西安邮电大学-移动应用开发兴趣小组";
    _labelThree.font = [UIFont systemFontOfSize:17];
    _labelThree.textColor = newColor;
    [self.contentView addSubview:_labelThree];
    
    _labelFour = [[UILabel alloc] init];
    _labelFour.text = @"昨天23:44";
    _labelFour.font = [UIFont systemFontOfSize:12];
    _labelFour.textColor = [UIColor grayColor];
    [self.contentView addSubview:_labelFour];
    return self;
}
- (void)layoutSubviews {
    _imageViewOne.frame = CGRectMake(20, 10, 55, 55);
    _imageViewTwo.frame = CGRectMake(80, 85, 150, 120 );
    _imageViewThree.frame = CGRectMake(235, 85, 150, 120);
    _labelOne.frame = CGRectMake(85, 8, 300, 30);
    _labelTwo.frame = CGRectMake(85, 40, 300, 30);
    _labelThree.frame = CGRectMake(85, 210, 300, 30);
    _labelFour.frame = CGRectMake(85, 230, 300, 30);
    
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
