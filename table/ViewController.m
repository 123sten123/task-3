//
//  ViewController.m
//  table
//
//  Created by стен on 04.02.17.
//  Copyright (c) 2017 стен. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (void)downloadImageFromURL:(NSURL *)URL intoCell:(UITableViewCell *)cell;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)downloadImageFromURL:(NSURL *)URL intoCell:(UITableViewCell *)cell
{
   
    NSData *data = [NSData dataWithContentsOfURL:URL];
    UIImage *img = [[UIImage alloc] initWithData:data];
    cell.imageView.image=img;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *CellId = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellId];
    cell.textLabel.text = @"123";
    NSString *path = @"http://www.denaie.ru/wp-content/uploads/2013/06/06_produmai_marshrut-300x262.jpg";
    NSURL *url = [NSURL URLWithString:path];
    [self downloadImageFromURL:url intoCell:cell];
    return cell;
}





@end
