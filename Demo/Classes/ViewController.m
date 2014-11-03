//
//  ViewController.m
//  SVSegmentedControl
//
//  Created by Sam Vermette on 24.05.11.
//  Copyright 2011 Sam Vermette. All rights reserved.
//

#import "ViewController.h"

#import <QuartzCore/QuartzCore.h>

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSMutableAttributedString *allString = [[NSMutableAttributedString alloc] initWithString:@"All (77)"];
    [allString addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"HelveticaNeue-Light" size:13] range:NSMakeRange(0, allString.string.length)];
    NSRange range = NSMakeRange(0, 3);
    [allString addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"HelveticaNeue-Medium" size:13] range:range];

    NSMutableAttributedString *kkString = [[NSMutableAttributedString alloc] initWithString:@"My (77)"];
    [kkString addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"HelveticaNeue-Light" size:13] range:NSMakeRange(0, kkString.string.length)];
    NSRange range1 = NSMakeRange(0, 2);
    [kkString addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"HelveticaNeue-Medium" size:13] range:range1];


    SVSegmentedControl *segmentedControl = [[SVSegmentedControl alloc] initWithAttributedSectionTitles:@[allString, kkString]];

    segmentedControl.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;

    segmentedControl.frame = (CGRect) {10, 13, 300, 29};
    segmentedControl.cornerRadius = 6;

    //
    //not selected sector
    segmentedControl.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:13];
    segmentedControl.selectedSegmentFont = [UIFont fontWithName:@"HelveticaNeue-Medium" size:13];;
    segmentedControl.backgroundImage = [[UIImage imageNamed:@"bgSegmentedControl.png"] resizableImageWithCapInsets:(UIEdgeInsets) {4, 4, 4, 4}];
    segmentedControl.height = 30;
    segmentedControl.textColor = [UIColor grayColor];
    segmentedControl.textShadowOffset = (CGSize) {0, 0};
    segmentedControl.textShadowColor = [UIColor clearColor];
    segmentedControl.innerShadowColor = [UIColor clearColor];
    segmentedControl.crossFadeLabelsOnDrag = NO;
    segmentedControl.thumbEdgeInset = (UIEdgeInsets) {1, 1, 0, 1};

    //
    // selected sector
    segmentedControl.thumb.textColor = [UIColor blackColor];
    segmentedControl.thumb.textShadowOffset = (CGSize) {0, 0};
    segmentedControl.thumb.textShadowColor = [UIColor clearColor];
    segmentedControl.thumb.shouldCastShadow = NO;
    segmentedControl.thumb.backgroundImage = [[UIImage imageNamed:@"bgSegmentedControlWhite.png"] resizableImageWithCapInsets:(UIEdgeInsets) {3, 3, 3, 3}];

    segmentedControl.thumb.highlightedBackgroundImage = [[UIImage imageNamed:@"bgSegmentedControlWhite.png"] resizableImageWithCapInsets:(UIEdgeInsets) {3, 3, 3, 3}];


    segmentedControl.center = (CGPoint) {160, 70};
    [self.view addSubview:segmentedControl];
    [segmentedControl updateSegmentTitle:kkString atIndex:0];

    // 1st CONTROL

//    SVSegmentedControl *navSC = [[SVSegmentedControl alloc] initWithSectionTitles:[NSArray arrayWithObjects:@"Section 1", @"Section 2", nil]];
//    navSC.changeHandler = ^(NSUInteger newIndex)
//    {
//        NSLog(@"segmentedControl did select index %i (via block handler)", newIndex);
//    };

    //[self.view addSubview:navSC];

    //navSC.center = CGPointMake(160, 70);


    // 2nd CONTROL
//    SVSegmentedControl *redSC = [[SVSegmentedControl alloc] initWithSectionTitles:[NSArray arrayWithObjects:@"About", @"Help", @"Credits", nil]];
//    [redSC addTarget:self action:@selector(segmentedControlChangedValue:) forControlEvents:UIControlEventValueChanged];
//    redSC.crossFadeLabelsOnDrag = YES;
//    redSC.thumb.tintColor = [UIColor colorWithRed:0.6 green:0.2 blue:0.2 alpha:1];
//    [redSC setSelectedSegmentIndex:1 animated:NO];
//
//    [self.view addSubview:redSC];

//    redSC.center = CGPointMake(160, 170);


    // 3rd CONTROL
//    SVSegmentedControl *grayRC = [[SVSegmentedControl alloc] initWithSectionTitles:[NSArray arrayWithObjects:@"Section 1", @"Section 2", nil]];
//    [grayRC addTarget:self action:@selector(segmentedControlChangedValue:) forControlEvents:UIControlEventValueChanged];
//    grayRC.font = [UIFont boldSystemFontOfSize:19];
//    grayRC.titleEdgeInsets = UIEdgeInsetsMake(0, 14, 0, 14);
//    grayRC.height = 46;
//    grayRC.thumb.tintColor = [UIColor colorWithRed:0 green:0.5 blue:0.1 alpha:1];
//    grayRC.mustSlideToChange = YES;
//
//    [self.view addSubview:grayRC];
//
//    grayRC.center = CGPointMake(160, 270);
//
//
//    // 4th CONTROL
//    SVSegmentedControl *yellowRC = [[SVSegmentedControl alloc] initWithSectionTitles:[NSArray arrayWithObjects:@"One", @"Two", @"Three", nil]];
//    [yellowRC addTarget:self action:@selector(segmentedControlChangedValue:) forControlEvents:UIControlEventValueChanged];
//    yellowRC.crossFadeLabelsOnDrag = YES;
//    yellowRC.font = [UIFont fontWithName:@"Marker Felt" size:20];
//    yellowRC.titleEdgeInsets = UIEdgeInsetsMake(0, 14, 0, 14);
//    yellowRC.height = 40;
//    [yellowRC setSelectedSegmentIndex:2 animated:NO];
//    yellowRC.thumb.tintColor = [UIColor colorWithRed:0.999 green:0.889 blue:0.312 alpha:1.000];
//    yellowRC.thumb.textColor = [UIColor blackColor];
//    yellowRC.thumb.textShadowColor = [UIColor colorWithWhite:1 alpha:0.5];
//    yellowRC.thumb.textShadowOffset = CGSizeMake(0, 1);
//
//    [self.view addSubview:yellowRC];
//
//    yellowRC.center = CGPointMake(160, 370);
}


#pragma mark - UIControlEventValueChanged

- (void)segmentedControlChangedValue:(SVSegmentedControl *)segmentedControl
{
    NSLog(@"segmentedControl %i did select index %i (via UIControl method)", segmentedControl.tag, segmentedControl.selectedSegmentIndex);
}


@end
