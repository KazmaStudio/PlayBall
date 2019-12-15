//
//  TabBarController.m
//  PlayBall
//
//  Created by 赵辰俊 on 2019/12/15.
//  Copyright © 2019 KAZMA Studio. All rights reserved.
//

#import "TabBarController.h"
#import "Constants.h"

@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.viewControllers[0].tabBarItem setImage: [UIImage systemImageNamed: IMAGE_NAME_CAR_FILL]];
    [self.viewControllers[0].tabBarItem setTitle: [[Constants shareInstance] getLocalizedWithName: LOCALIZED_TEXT_CODE_TABBAR_ITEM_MAIN]];
        
    [self.viewControllers[1].tabBarItem setImage: [UIImage systemImageNamed: IMAGE_NAME_PERSON_CORP_SQUARE_FILL]];
    [self.viewControllers[1].tabBarItem setTitle: [[Constants shareInstance] getLocalizedWithName: LOCALIZED_TEXT_CODE_TABBAR_ITEM_MINE]];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
