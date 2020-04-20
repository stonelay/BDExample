//
//  DemoViewController.m
//  BDExample
//
//  Created by Lay on 2020/4/10.
//

#import "DemoViewController.h"
#import "HBURLConvertible.h"
#import "NSMutableAttributedString+BDAttributedMaker.h"
#import "UILabel+BDAsyncAttributedMaker.h"

@interface DemoViewController ()

@property (nonatomic, strong) UILabel *attriDemoLabel;
@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    [self.attriDemoLabel bd_setAsyncAttributedStringWithMaker:^(BDAsyncMutableAttributedStringMaker * _Nonnull m) {
        m.string(@"123")
        .textColor(@"#990099")
        .fontSize(20);
        
        m.space(4);
        
        m.webImage(@"http://h0.beicdn.com/open/201849/4a9b37aa300a141c_56x56.png")
        .size(CGSizeMake(40, 40))
        .alignToFont([UIFont systemFontOfSize:20])
        .verticalAlignment(BDAttributedAttachmentVerticalAlignmentCenter);
    }];
}

- (UILabel *)attriDemoLabel
{
    if (!_attriDemoLabel) {
        _attriDemoLabel = [UILabel new];
        [self.view addSubview:_attriDemoLabel];
        [_attriDemoLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.equalTo(@20);
        }];
    }
    return _attriDemoLabel;
}

@end
