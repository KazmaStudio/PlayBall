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
   
    // Do any additional setup after loading the view from its nib.
}

- (void)viewWillAppear:(BOOL)animated{

    if (![[[Constants shareInstance] getLanguaCode] isEqualToNumber: [NSNumber numberWithInt:LANGUAGE_CODE_NIL]]){
        _buttonSelectLanguageSC.hidden = YES;
        _buttonSelectLanguageJP.hidden = YES;
        _buttonSelectLanguageEN.hidden = YES;
        
        [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer:) userInfo:nil repeats:NO];
        
        
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)updateTimer:(NSTimer *)timer {
    if (LAUNCH_COUNT > 0) {
        LAUNCH_COUNT --;
        [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer:) userInfo:nil repeats:NO];
    }else{
        LAUNCH_COUNT = LAUNCH_COUNT_INIT;
        [self performSegueWithIdentifier: SEGUE_SELECT_LANGUAGE sender: nil];
    }
}

- (IBAction)touchUpInsideButtonSkip:(UIButton *)sender {
    if ([sender.titleLabel.text isEqualToString: LANGUAGE_NAME_SC]){
        [[Constants shareInstance] setLanguaCode: [NSNumber numberWithInt: LANGUAGE_CODE_SC]];
    }else if ([sender.titleLabel.text isEqualToString: LANGUAGE_NAME_JP]){
        [[Constants shareInstance] setLanguaCode: [NSNumber numberWithInt: LANGUAGE_CODE_JP]];
    }else if([sender.titleLabel.text isEqualToString: LANGUAGE_NAME_EN]){
        [[Constants shareInstance] setLanguaCode: [NSNumber numberWithInt: LANGUAGE_CODE_EN]];
    }
    [self performSegueWithIdentifier: SEGUE_SELECT_LANGUAGE sender: sender];
}
@end

