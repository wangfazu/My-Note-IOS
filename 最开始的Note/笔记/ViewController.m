//
//  ViewController.m
//  笔记
//
//  Created by app on 17/3/2.
//  Copyright © 2017年 Feizj. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)ViewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)TextField{
    UITextField *textFeild=[[UITextField alloc]init];
    textFeild.frame=CGRectMake(140, 200, 180, 50);
    //占位符，placeholder
    textFeild.placeholder=@"请输入账号";
    //代理方法 同 tableview
    textFeild.delegate=self;
    [self.view addSubview:textFeild];
    
    if ([textFeild.text isEqualToString:@"123"]) {
        if ([textFeild1.text isEqualToString:@"123"]){}
    }
}
-(void)ImageView{
    UIImageView *imagview=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
    imagview.image=[UIImage imageNamed:@"图片名字"];
    
    
    [self.view addSubview:imagview];
}
-(void)CGfloat x.y{
    CGFloat w=[[UIScreen mainScreen]bounds].size.width;
    CGFloat h=[[UIScreen mainScreen]bounds].size.height;
}
-(void)Cartoon{
    //创建画布
    UIImageView *image=[[UIImageView alloc]init];
    image.frame=CGRectMake(200, 200, 51, 63);
    image.center=CGPointMake(0, 0);
    //开启图片交互
    image.userInteractionEnabled=YES;
    image.image=[UIImage imageNamed:@""];
    [self.view addSubview:image];
    //帧动画
    NSMutableArray *carImage=[[NSMutableArray alloc]init];
    UIImage *Image=[UIImage imageNamed:@""];
    [carImage addObject:image];
    UIImage * image1=[UIImage imageNamed:@""];
    [carImage addObject:image1];
    //添加数组到画布
    image.animationImages=carImage;
    image.animationDuration=0.5;
    image.animationRepeatCount=0;
    [image startAnimating];
}
-(void)Timer{
[NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(fangfa) userInfo:nil repeats:YES];
    [NSTimer scheduledTimerWithTimeInterval:<#(NSTimeInterval)#> invocation:<#(nonnull NSInvocation *)#> repeats:<#(BOOL)#>];
    
}
-(void)Button{
    UIButton *btn=[[UIButton alloc]init];
    btn.frame=CGRectMake(0, 400, 120, 50);
    //显示文字
    [btn setTitle:@"" forState:UIControlStateNormal];
    //颜色常态  normal
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    //选中 selcted
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
    //默认为NO，no=normal
    btn.selected=YES;
    //点击响应办法
    [btn addTarget:self action:@selector(fangFa) forControlEvents:UIControlEventTouchUpInside];
    //字符大小
    btn.titleLabel.font=[UIFont systemFontOfSize:23];
    [self.view addSubview:btn];

}
-(void)Lobel{
    UILabel *Label=[[UILabel alloc ]init];
    Label.frame=CGRectMake(70, 200, 40,50);
    Label.text=@"";
    Label.textColor=[UIColor redColor];
    //居中()
    Label.textAlignment=NSTextAlignmentCenter;
    //字符大小
    Label.font=[UIFont systemFontOfSize:20];
    //透明度
    Label.alpha=0.6;
    //边框颜色，宽度
    Label.layer.borderColor=[[UIColor redColor]CGColor];
    Label.layer.borderWidth=10;
    
    //
    Label.lineBreakMode=NSLineBreakByTruncatingMiddle;
    //圆角,设置半径
    Label.clipsToBounds=YES;
    Label.layer.cornerRadius=10;
    [self.view addSubview:Label];
    
    
}
-(void)yuanjiao{
    XX.layer.cornerRadius=0;
  XX.clipsToBounds=YES;
    XX.layer.borderColor=[[UIColor greenColor]CGColor];
    XX.layer.borderwidth=1;
}
-(void)TableView{
    CGFloat w=[[UIScreen mainScreen]bounds].size.width;
    CGFloat h=[[UIScreen mainScreen]bounds].size.height;
    
    UITableView *table=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, w, h)];
    //设置代理
    table.delegate=self;
    table.dataSource=self;
    [self.view addSubview:table];
//    在h中添加@interface ViewController : UIViewController
//    <UITableViewDelegate,
//    UITableViewDataSource>
    
    
    //切记创建固定方法，返回参数“行数”
    -(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
        return 20;
        
    }
    //
    -(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
        //取出有cell1标记的单元格
        UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell1"];
        //如果没有cell创建cell并添加标记cell1
        if (cell==nil) {
            cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell1"];
            //创建lebal添加到单元格上
            UILabel *lab=[[UILabel alloc]initWithFrame:CGRectMake(20, 20, 50, 20)];
            lab.tag=2;
            [cell addSubview:lab];
            
        }
        UILabel *lab=[cell viewWithTag:2];
        lab.text=[NSString stringWithFormat:@"%ld",(long)indexPath.row];
        return cell;
        //indexPath.row当前行数
    }
    
    - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
        
        if (indexPath.row==4) {
            return 90;
        }
        return 45;
    }

    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
