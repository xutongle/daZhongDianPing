//
//  TTBBScrollViewButton.h
//  daZhongDianPing
//
//  Created by ttbb on 16/8/5.
//  Copyright © 2016年 ttbb. All rights reserved.
//

#import <UIKit/UIKit.h>




@interface TTBBScrollViewButton : UIView<UIScrollViewDelegate>{
    
   
    UIScrollView * ScrollView;
    float leftSpace;
    float topSpace;
    NSInteger scrollViewHeight;
}
@property(nonatomic,retain)NSDictionary *buttonDict;


@end
