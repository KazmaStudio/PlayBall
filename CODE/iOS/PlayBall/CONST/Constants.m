//
//  Constants.m
//  PlayBall
//
//  Created by 赵辰俊 on 2019/12/15.
//  Copyright © 2019 KAZMA Studio. All rights reserved.
//

#import "Constants.h"

@implementation Constants

static Constants* _instance = nil;
 
+(instancetype) shareInstance
{
    static dispatch_once_t onceToken ;
    dispatch_once(&onceToken, ^{
        _instance = [[super allocWithZone:NULL] init] ;
    }) ;
     
    return _instance ;
}
 
+(id) allocWithZone:(struct _NSZone *)zone
{
    return [Constants shareInstance] ;
}
 
-(id) copyWithZone:(struct _NSZone *)zone
{
    return [Constants shareInstance] ;
}

NSString *const SEGUE_SELECT_LANGUAGE = @"segueSelectLanguage";

NSString *const IMAGE_NAME_CAR_FILL = @"car.fill";
NSString *const IMAGE_NAME_PERSON_CORP_SQUARE_FILL = @"person.crop.square.fill";

NSString *const LANGUAGE_NAME_SC = @"简体中文";
NSString *const LANGUAGE_NAME_JP = @"日本語";
NSString *const LANGUAGE_NAME_EN = @"ENGLISH";

int const LANGUAGE_CODE_NIL = -1;

int const LANGUAGE_CODE_SC = 0;
int const LANGUAGE_CODE_JP = 1;
int const LANGUAGE_CODE_EN = 2;

int const LOCALIZED_TEXT_CODE_TABBAR_ITEM_MAIN = 0;
int const LOCALIZED_TEXT_CODE_TABBAR_ITEM_MINE = 1;

int const LAUNCH_COUNT_INIT = 3;
int LAUNCH_COUNT = 3;

- (void) initialApp{
    if ([[NSUserDefaults standardUserDefaults] valueForKey:USER_DEFAULT_KEY_LANGUAGE_CODE] ==  nil){
        [[NSUserDefaults standardUserDefaults] setValue:[NSNumber numberWithInt:LANGUAGE_CODE_NIL] forKey:USER_DEFAULT_KEY_LANGUAGE_CODE];
    }
}

NSString *const USER_DEFAULT_KEY_LANGUAGE_CODE =  @"languageCode";

- (void)setLanguaCode: (NSNumber *)languageCode{
    [[NSUserDefaults standardUserDefaults] setValue:languageCode forKey:@"languageCode"];
}

- (NSNumber *)getLanguaCode{
    return [[NSUserDefaults standardUserDefaults] valueForKey:USER_DEFAULT_KEY_LANGUAGE_CODE];
}

- (NSString *) getLocalizedWithCode: (NSNumber *) localizedTextCode{
    
    NSString *localizedString = @"";
    
    switch (localizedTextCode.intValue) {
        case LOCALIZED_TEXT_CODE_TABBAR_ITEM_MAIN:
            switch ([self getLanguaCode].intValue) {
                case LANGUAGE_CODE_SC:
                    localizedString = @"Play Ball !";
                    break;
                
                case LANGUAGE_CODE_JP:
                    localizedString = @"Play Ball !";
                    break;
                    
                case LANGUAGE_CODE_EN:
                    localizedString = @"Play Ball !";
                    break;
                    
                default:
                    localizedString = @"Play Ball !";
                    break;
            }
            break;
            
        case LOCALIZED_TEXT_CODE_TABBAR_ITEM_MINE:
            switch ([self getLanguaCode].intValue) {
                case LANGUAGE_CODE_SC:
                    localizedString = @"我的";
                    break;
                    
                case LANGUAGE_CODE_JP:
                    localizedString = @"私の";
                    break;
                    
                case LANGUAGE_CODE_EN:
                    localizedString = @"Mine";
                    break;
                    
                default:
                    localizedString = @"我的";
                    break;
            }
            break;
            
        default:
            break;
    }
    return localizedString;
}

@end
