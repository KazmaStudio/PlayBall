//
//  LaunchViewController.m
//  PlayBall
//
//  Created by 赵辰俊 on 2019/12/15.
//  Copyright © 2019 KAZMA Studio. All rights reserved.
//

#import "LaunchViewController.h"
#import "Constants.h"

@interface LaunchViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonSelectLanguageSC;
@property (weak, nonatomic) IBOutlet UIButton *buttonSelectLanguageJP;
@property (weak, nonatomic) IBOutlet UIButton *buttonSelectLanguageEN;
- (IBAction)touchUpInsideButtonSkip:(UIButton *)sender;

@end

@implementation LaunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ([[Constants shareInstance] getLanguaCode] != LANGUAGE_CODE_NIL){
        _buttonSelectLanguageSC.hidden = YES;
        _buttonSelectLanguageJP.hidden = YES;
        _buttonSelectLanguageEN.hidden = YES;
    }
    // Do any additional setup after loading the view from its nib.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)touchUpInsideButtonSkip:(UIButton *)sender {
    if ([sender.titleLabel.text isEqualToString: LANGUAGE_NAME_SC]){
        [[Constants shareInstance] setLanguaCode: LANGUAGE_CODE_SC];
    }else if ([sender.titleLabel.text isEqualToString: LANGUAGE_NAME_JP]){
        [[Constants shareInstance] setLanguaCode: LANGUAGE_CODE_JP];
    }else if([sender.titleLabel.text isEqualToString: LANGUAGE_NAME_EN]){
        [[Constants shareInstance] setLanguaCode: LANGUAGE_CODE_EN];
    }
    [self performSegueWithIdentifier: SEGUE_SELECT_LANGUAGE sender: sender];
}
@end
