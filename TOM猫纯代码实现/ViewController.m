//
//  ViewController.m
//
//  Created by Xavier on 15/12/6.
//  Copyright © 2015年 Xavier. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) UIImageView *tom;
@property (nonatomic,strong) UIButton *eatButton;
@property (nonatomic,strong) UIButton *pieButton;
@property (nonatomic,strong) UIButton *drinkButton;
@property (nonatomic,strong) UIButton *scratchButton;
@property (nonatomic,strong) UIButton *fartButton;
@property (nonatomic,strong) UIButton *cymbalButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建一个ImageView
    UIImageView *tomImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    self.tom = tomImage;
    tomImage.image = [UIImage imageNamed:@"tom.jpg"];
    //添加到界面上
    [self.view addSubview:tomImage];
    
    //创建一个eat按钮
    CGFloat eby = self.view.frame.size.height - 60;
    UIButton *eatbtn= [[UIButton alloc] initWithFrame:CGRectMake(0, eby, 60, 60)];
    self.eatButton = eatbtn;
    [self.eatButton setImage:[UIImage imageNamed:@"eat"] forState:UIControlStateNormal];
    //设置tag，用照片数表示
    self.eatButton.tag = 40;
    //设置文本
    [self.eatButton setTitle:@"eat" forState:UIControlStateNormal];
    //设置文本颜色
    [self.eatButton setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
    //添加到界面上
    [self.view addSubview:self.eatButton];
    //监听方法
    [self.eatButton addTarget:self action:@selector(tomAction:) forControlEvents:UIControlEventTouchUpInside];
    
    //创建一个pie按钮
    CGFloat pbx = 0,pby = 0;
    pbx = self.view.frame.size.width - 60;
    pby = self.view.frame.size.height - 60;
    UIButton *piebtn = [[UIButton alloc] initWithFrame:CGRectMake(pbx, pby, 60, 60)];
    self.eatButton = piebtn;
    //设置按钮图片
    [self.eatButton setImage:[UIImage imageNamed:@"pie"] forState:UIControlStateNormal];
    //设置按钮的tag
    self.eatButton.tag = 24;
    //设置按钮文字
    [self.eatButton setTitle:@"pie" forState:UIControlStateNormal];
    //设置文字颜色
    [self.eatButton setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
    //添加到界面上
    [self.view addSubview:self.eatButton];
    //监听事件
    [self.eatButton addTarget:self action:@selector(tomAction:) forControlEvents:UIControlEventTouchUpInside];
    
    //创建一个drink按钮
    CGFloat dbx = 0,dby = 0;
    dby = self.view.frame.size.height - 120;
    UIButton *drinkbtn = [[UIButton alloc] initWithFrame:CGRectMake(dbx, dby, 60, 60)];
    self.drinkButton = drinkbtn;
    //设置按钮图片
    [self.drinkButton setImage:[UIImage imageNamed:@"drink"] forState:UIControlStateNormal];
    //设置按钮的tag
    self.drinkButton.tag = 81;
    //设置按钮文字
    [self.drinkButton setTitle:@"drink" forState:UIControlStateNormal];
    //设置文字颜色
    [self.drinkButton setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
    //添加到界面上
    [self.view addSubview:self.drinkButton];
    //监听事件
    [self.drinkButton addTarget:self action:@selector(tomAction:) forControlEvents:UIControlEventTouchUpInside];
    
    //创建一个scratch按钮
    CGFloat sbx = 0,sby = 0;
    sbx = self.view.frame.size.width - 60;
    sby = self.view.frame.size.height - 120;
    UIButton *scratchbtn = [[UIButton alloc] initWithFrame:CGRectMake(sbx, sby, 60, 60)];
    self.scratchButton = scratchbtn;
    //设置按钮图片
    [self.scratchButton setImage:[UIImage imageNamed:@"scratch"] forState:UIControlStateNormal];
    //设置按钮的tag
    self.scratchButton.tag = 56;
    //设置按钮文字
    [self.scratchButton setTitle:@"scratch" forState:UIControlStateNormal];
    //设置文字颜色
    [self.scratchButton setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
    //添加到界面上
    [self.view addSubview:self.scratchButton];
    //监听事件
    [self.scratchButton addTarget:self action:@selector(tomAction:) forControlEvents:UIControlEventTouchUpInside];
    
    //创建一个cymbal按钮
    CGFloat cbx = 0,cby = 0;
    cby = self.view.frame.size.height - 180;
    UIButton *cymbalbtn = [[UIButton alloc] initWithFrame:CGRectMake(cbx, cby, 60, 60)];
    self.cymbalButton = cymbalbtn;
    //设置按钮图片
    [self.cymbalButton setImage:[UIImage imageNamed:@"cymbal"] forState:UIControlStateNormal];
    //设置按钮的tag
    self.cymbalButton.tag = 13;
    //设置按钮文字
    [self.cymbalButton setTitle:@"cymbal" forState:UIControlStateNormal];
    //设置文字颜色
    [self.cymbalButton setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
    //添加到界面上
    [self.view addSubview:self.cymbalButton];
    //监听事件
    [self.cymbalButton addTarget:self action:@selector(tomAction:) forControlEvents:UIControlEventTouchUpInside];
    
    //创建一个fart按钮
    CGFloat fbx = 0,fby = 0;
    fbx = self.view.frame.size.width - 60;
    fby = self.view.frame.size.height - 180;
    UIButton *fartbtn = [[UIButton alloc] initWithFrame:CGRectMake(fbx, fby, 60, 60)];
    self.fartButton = fartbtn;
    //设置按钮图片
    [self.fartButton setImage:[UIImage imageNamed:@"fart"] forState:UIControlStateNormal];
    //设置按钮的tag
    self.fartButton.tag = 28;
    //设置按钮文字
    [self.fartButton setTitle:@"fart" forState:UIControlStateNormal];
    //设置文字颜色
    [self.fartButton setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
    //添加到界面上
    [self.view addSubview:self.fartButton];
    //监听事件
    [self.fartButton addTarget:self action:@selector(tomAction:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)tomActionWith:(NSString *)name andImageCount:(NSUInteger)count{
    //创建一个数组
    NSMutableArray *animationArray = [NSMutableArray array];
    for (int i = 0; i<count; i++) {
        //给照片命名
        NSString *imageName = [NSString stringWithFormat:@"%@_%02d.jpg",name,i];
        //获取完整地址
        NSString *path = [[NSBundle mainBundle] pathForResource:imageName ofType:nil];
        //通过imageWithContentsOfFile给image赋值
        UIImage *image = [UIImage imageWithContentsOfFile:path];
        //给数组添加元素
        [animationArray addObject:image];
    }
    //判断动画是否正在进行，如果是，则退出
    if ([self.tom isAnimating]) return;
    //给动画数组赋一个数组
    self.tom.animationImages = animationArray;
    //设置动画播放次数
    self.tom.animationRepeatCount = 1;
    //设置动画持续时间
    self.tom.animationDuration = self.tom.animationImages.count *0.08;
    
    //开始动画
    [self.tom startAnimating];
    //动画结束，清空数组，释放内存
    [self.tom performSelector:@selector(setAnimationImages:) withObject:nil afterDelay:self.tom.animationDuration];
}

- (void)tomAction:(UIButton *)button{
    [self tomActionWith:button.currentTitle andImageCount:button.tag];
}


@end
