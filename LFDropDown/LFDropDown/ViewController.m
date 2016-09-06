//
//  ViewController.m
//  LFDropDown
//
//  Created by lifushuai on 16/9/5.
//  Copyright © 2016年 lifushuai. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"
@interface ViewController ()<UIPopoverPresentationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIButton *dropVIew;
@property (nonatomic, strong) TableViewController *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
}
- (IBAction)clickDropDown:(id)sender {
    self.tableView.modalPresentationStyle = UIModalPresentationPopover;
    self.tableView.popoverPresentationController.delegate = self;
    self.tableView.popoverPresentationController.sourceView = self.dropVIew;
    self.tableView.popoverPresentationController.sourceRect = self.dropVIew.bounds;
    self.tableView.popoverPresentationController.permittedArrowDirections = UIPopoverArrowDirectionUp;
    [self presentViewController:self.tableView animated:YES completion:nil];
}

- (UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller{
    return UIModalPresentationNone;
}

- (TableViewController *)tableView {
	if(_tableView == nil) {
		_tableView = [[TableViewController alloc] init];
	}
	return _tableView;
}

@end
