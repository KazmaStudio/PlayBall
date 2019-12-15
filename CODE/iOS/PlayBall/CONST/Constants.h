//
//  Constants.h
//  PlayBall
//
//  Created by 赵辰俊 on 2019/12/15.
//  Copyright © 2019 KAZMA Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Constants : NSObject

FOUNDATION_EXPORT int LANGUAGE_CODE;

FOUNDATION_EXPORT NSString *const SEGUE_SELECT_LANGUAGE;

FOUNDATION_EXPORT NSString *const IMAGE_NAME_CAR_FILL;
FOUNDATION_EXPORT NSString *const IMAGE_NAME_PERSON_CORP_SQUARE_FILL;

FOUNDATION_EXPORT NSString *const LANGUAGE_NAME_SC;
FOUNDATION_EXPORT NSString *const LANGUAGE_NAME_JP;
FOUNDATION_EXPORT NSString *const LANGUAGE_NAME_EN;

FOUNDATION_EXPORT int const LANGUAGE_CODE_NIL;
FOUNDATION_EXPORT int const LANGUAGE_CODE_SC;
FOUNDATION_EXPORT int const LANGUAGE_CODE_JP;
FOUNDATION_EXPORT int const LANGUAGE_CODE_EN;

FOUNDATION_EXPORT int const LOCALIZED_TEXT_CODE_TABBAR_ITEM_MAIN;
FOUNDATION_EXPORT int const LOCALIZED_TEXT_CODE_TABBAR_ITEM_MINE;

+ (instancetype) shareInstance;
- (void)setLanguaCode: (int)languageCode;
- (int)getLanguaCode;
- (NSString *) getLocalizedWithName: (int) localizedTextCode;

@end

NS_ASSUME_NONNULL_END
