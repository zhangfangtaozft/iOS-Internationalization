//
//  internationalizationObject.h
//  应用内国际化
//
//  Created by 张芳涛 on 2016/12/23.
//  Copyright © 2016年 张芳涛. All rights reserved.
//

#ifndef internationalizationObject_h
#define internationalizationObject_h

#define Localized(key)  [[NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@",[[NSUserDefaults standardUserDefaults] objectForKey:@"appLanguage"]] ofType:@"lproj"]] localizedStringForKey:(key) value:nil table:@"Localizable"]
#endif /* internationalizationObject_h */
