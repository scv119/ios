//
//  HelloWorldViewController.h
//  Quiz
//
//  Created by shen chen on 13-3-27.
//  Copyright (c) 2013年 com.bignerdranch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController
{
    int currentQuestionIndex;
    
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}

- (IBAction) showQuestion:(id)sender;
- (IBAction) showAnswer:(id)sender;
@end
