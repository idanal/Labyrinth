//
//  Ball.m
//  Labyrinth
//
//  Created by Eric Meyer on 7/9/09.
//  Copyright 2009 8th Light. All rights reserved.
//

#import "Ball.h"

@implementation Ball

@synthesize xVelocity;
@synthesize yVelocity;
@synthesize zVelocity;

-(id) init {
	[super init];
	
	self.xVelocity = 0;
	self.yVelocity = 0;
	self.zVelocity = 0;
	
	return self;
}

- (void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration {
//	[self handleAcceleration: acceleration.x y: acceleration.y z: acceleration.z];
	//	self.xVelocity = acceleration.x;
	self.xVelocity = acceleration.x;
	self.yVelocity = acceleration.y;
	self.zVelocity = acceleration.z;

	NSLog(@"in accelerometer %f", acceleration.x);
}

@end