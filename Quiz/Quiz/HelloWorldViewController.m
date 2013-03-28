//
//  HelloWorldViewController.m
//  Quiz
//
//  Created by shen chen on 13-3-27.
//  Copyright (c) 2013年 com.bignerdranch. All rights reserved.
//


#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()

@end

@implementation HelloWorldViewController

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        questions = [[NSMutableArray alloc] init];
        answers   = [[NSMutableArray alloc] init];
        
        [questions addObject:@ "7 + 7?"];
        [answers addObject:@"14"];
        
        [questions addObject:@ "17 + 7?"];
        [answers addObject:@"24"];
        
        [questions addObject:@ "37 + 7?"];
        [answers addObject:@"44"];
    }
    
    return self;
}

- (IBAction) showQuestion:(id)sender
{
    currentQuestionIndex = (currentQuestionIndex + 1) % [questions count];
    
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    NSLog(@"displaying question:%@", question);
    
    [questionField setText:question];
    
    [answerField setText:@"???"];
}

- (IBAction) showAnswer:(id)sender
{
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    NSLog(@"displaying answer:%@", answer);
    
    [answerField setText:answer];
}
@end
