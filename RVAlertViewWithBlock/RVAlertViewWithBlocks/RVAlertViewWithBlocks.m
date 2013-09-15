//
//  RVAlertViewWithBlocks.m
//  RVAlertViewWithBlock
//
//  Created by Rubén Vázquez on 9/15/13.
//  Published under MIT License
//
//  Find me
//  LinkedIn    http://lnkd.in/H_V68x
//  Github:     https://github.com/RubenVot
//  Twitter:    @RubenVot
//

#import "RVAlertViewWithBlocks.h"
@interface RVAlertViewWithBlocks()
@property (nonatomic, strong) void(^okBlock)(void);
@property (nonatomic, strong) void(^cancelBlock)(void);
@end


@implementation RVAlertViewWithBlocks


- (id)initWithTitle:(NSString*)title message:(NSString*)message cancelButtonTitle:(NSString*)cancelButtonTitle cancelBlock:(void(^)(void))cancelBlock okButtonTitle:(NSString*)okButtonTitle okBlock:(void(^)(void))okBlock
{
    self = [super initWithTitle:title message:message delegate:self cancelButtonTitle:cancelButtonTitle otherButtonTitles: okButtonTitle, nil];
    if (self)
    {
        self.cancelBlock = cancelBlock;
        self.okBlock = okBlock; 
    }
    return self;
}

- (void)dealloc
{
}

#pragma mark - AlertViewDelegate methods

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex)
    {
        case 0:
            self.cancelBlock();
            break;
        case 1:
            self.okBlock();
            break;
        default:
            break;
    }
}


@end
