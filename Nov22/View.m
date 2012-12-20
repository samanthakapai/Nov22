//
//  View.m
//  Video
//
//  Created by NYU User on 11/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "View.h"


@implementation View

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
        // Initialization code
		self.backgroundColor = [UIColor yellowColor];
        mySwitch = [[UISwitch alloc] initWithFrame: CGRectZero];
		if (mySwitch == nil) {
			return nil;
		}
        
		//Call the valueChanged: method of the application delegate
		//when the value of the switch is changed.
		
		[mySwitch addTarget: [UIApplication sharedApplication].delegate
                     action: @selector(valueChanged:)
           forControlEvents: UIControlEventValueChanged
         ];
		
		//Center the switch in the SwitchView.
		CGRect b1 = self.bounds;
         
		mySwitch.center = CGPointMake(
                                      b1.origin.x + b1.size.width / 2,
                                      b1.origin.y + b1.size.height / 2
                                      );
        
         mySwitch.on = NO;	//the default
		[self addSubview: mySwitch];
	}
	return self;
}

- (void) drawRect: (CGRect) rect
{
    // Drawing code
    CGRect b1 = self.bounds;

    UIFont *font = [UIFont systemFontOfSize: 24.0];
    NSString *string = @"iPod Way";
    CGPoint point = CGPointMake( b1.origin.x + b1.size.width / 2-150,
                                b1.origin.y + b1.size.height / 2-15);
    [string drawAtPoint: point withFont: font];
}


@end
