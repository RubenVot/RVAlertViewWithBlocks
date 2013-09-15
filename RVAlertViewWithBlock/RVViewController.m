//
//  RVViewController.m
//  RVAlertViewWithBlock
//
//  Created by Rubén Vázquez on 9/15/13.
//

#import "RVViewController.h"
#import "RVAlertViewWithBlocks.h"

@interface RVViewController ()

@end

@implementation RVViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    RVAlertViewWithBlocks *alertView = [[RVAlertViewWithBlocks alloc] initWithTitle:@"This is the title" message:@"This is the message" cancelButtonTitle:@"Cancel" cancelBlock:^{
        NSLog(@"Executing cancel block");
    } okButtonTitle:@"Ok" okBlock:^{
        NSLog(@"Executing ok block");
    }];
    [alertView show]; 
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
