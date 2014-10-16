//
//  SYBActionTransition.m
//  WClient
//
//  Created by ryan on 14-10-16.
//  Copyright (c) 2014年 Song Xiaoming. All rights reserved.
//

#import "SYBActionTransition.h"

@implementation SYBActionTransition

CGFloat offset = 40.f;

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return _duration;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    UIView *fromView = fromVC.view;
    UIView *toView = toVC.view;
    UIView *containerView = [transitionContext containerView];
    
    CGRect screenRect = [UIScreen mainScreen].bounds;
    
    // animation for present
    if (_presenting) {
        
        CGRect toViewRect = toView.frame;
        CGRect finialRect = toView.frame;
        
        toViewRect.origin.y = screenRect.size.height;
        toView.frame = toViewRect;
        
        finialRect.origin.y = offset;
//        finialRect.size.height -= offset;
        
        [containerView addSubview:fromView];
        [containerView addSubview:toView];
        
        
        [UIView animateWithDuration:_duration
                              delay:0.0
                            options:UIViewAnimationOptionCurveLinear
                         animations:^{
                             toView.frame = finialRect;
                         } completion:^(BOOL finished) {
                             [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
                         }];
        
//        [UIView animateWithDuration:_duration
//                         animations:^{
//                             toView.frame = finialRect;
//                         } completion:^(BOOL finished) {
//                             [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
//                         }];
    
        
    } else {
        CGRect toViewRect = toView.frame;
        toViewRect.origin.y = screenRect.size.height;
        
        CGRect finialRect = toViewRect;
        finialRect.origin.y = screenRect.size.height;
        
        [containerView addSubview:fromView];
        [containerView addSubview:toView];
        
        
        [UIView animateWithDuration:_duration
                              delay:0.0
                            options:UIViewAnimationOptionBeginFromCurrentState
                         animations:^{
                             toView.frame = finialRect;
                         } completion:^(BOOL finished) {
                             [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
                         }];
        
//        [UIView animateWithDuration:_duration
//                         animations:^{
//                             toView.frame = finialRect;
//                         } completion:^(BOOL finished) {
//                             [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
//                         }];
    }
}


@end
