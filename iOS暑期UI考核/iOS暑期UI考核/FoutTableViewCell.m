//
//  FoutTableViewCell.m
//  iOS暑期UI考核
//
//  Created by 李育腾 on 2022/8/6.
//

#import "FoutTableViewCell.h"

@implementation FoutTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    UIColor* newColor = [UIColor colorWithRed:0.4 green:0.6 blue:0.8 alpha:1.0f];
    UIColor* newColor2 = [UIColor colorWithRed:0.4 green:0.6 blue:0.7 alpha:1.0f];
    UIColor* newColor3 = [UIColor colorWithRed:233.0f/255.0f green:232.0f/255.0f blue:230.0f/255.0f alpha:1.0f];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    _imageViewOne = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"img1.jpeg"]];
    _imageViewTwo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"IMG_0091.JPG"]];
    _imageViewThree = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"IMG_0092.JPG"]];
    [self.contentView addSubview:_imageViewTwo];
    [self.contentView addSubview:_imageViewOne];
    [self.contentView addSubview:_imageViewThree];
    _labelOne = [[UILabel alloc] init];
    _labelOne.text = @"A小司Mh";
    _labelOne.font = [UIFont systemFontOfSize:17];
    _labelOne.textColor = newColor;
    [self.contentView addSubview:_labelOne];
    
    
    _labelTwo = [[UILabel alloc] init];
    _labelTwo.text = @"今日回访母校，瑞泉！";
    _labelTwo.font = [UIFont systemFontOfSize:19];
    _labelTwo.textColor = [UIColor blackColor];
    [self.contentView addSubview:_labelTwo];
    
    _labelThree = [[UILabel alloc] init];
    _labelThree.text = @"渭南市-临渭区-老城瑞泉中学";
    _labelThree.font = [UIFont systemFontOfSize:17];
    _labelThree.textColor = newColor;
    [self.contentView addSubview:_labelThree];
    
    _labelFour = [[UILabel alloc] init];
    _labelFour.text = @"今天12:17";
    _labelFour.font = [UIFont systemFontOfSize:12];
    _labelFour.textColor = [UIColor grayColor];
    [self.contentView addSubview:_labelFour];
    
    _labelFive = [[UILabel alloc] init];
    _labelFive.text = @"李育腾：";
    _labelFive.font = [UIFont systemFontOfSize:14];
    _labelFive.textColor = newColor2;
    _labelFive.backgroundColor = newColor3;
    [self.contentView addSubview:_labelFive];
    
    _labelSxi = [[UILabel alloc] init];
    _labelSxi.text = @"不带我浪真有你的！";
    _labelSxi.textColor = [UIColor blackColor];
    _labelSxi.font = [UIFont systemFontOfSize:14];
    _labelSxi.textColor = [UIColor grayColor];
    [self.contentView addSubview:_labelSxi];
    return self;
}
- (void)layoutSubviews {
    _imageViewOne.frame = CGRectMake(20, 10, 55, 55);
    _imageViewTwo.frame = CGRectMake(80, 85, 150, 120 );
    _imageViewThree.frame = CGRectMake(235, 85, 150, 120);
    _labelOne.frame = CGRectMake(85, 8, 300, 30);
    _labelTwo.frame = CGRectMake(85, 40, 300, 30);
    _labelThree.frame = CGRectMake(85, 210, 400, 30);
    _labelFour.frame = CGRectMake(85, 230, 300, 30);
    _labelFive.frame = CGRectMake(80, 255, 300, 25);
    _labelSxi.frame = CGRectMake(140, 255, 300, 25);
    
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
