//
//  CGRectDivideNullTests.m
//  CGRectDivideNullTests
//
//  Created by Jonathan Crooke on 14/01/2014.
//  Copyright (c) 2014 Jonathan Crooke. All rights reserved.
//

#import <AppKit/AppKit.h>
#import <XCTest/XCTest.h>
#import "CGRectDivideNull.h"

@interface CGRectDivideNullTests : XCTestCase
@property (strong) NSView *view;
@property (assign) CGRect sourceRect;
@property (assign) CGRect destination;
@property (assign) CGRect slice;
@end

@implementation CGRectDivideNullTests

- (void) testShouldUseANormalCase
{
  CGRectDivideNull(self.sourceRect, &_destination, &_slice, 25.5, CGRectMinXEdge);
  XCTAssertEqual(self.destination, CGRectMake(1, 10, 25.5, 100), @"Not correct destionation rect");
  XCTAssertEqual(self.slice, CGRectMake(26.5, 10, 24.5, 100), @"Not correct destionation rect");
}

- (void) testShouldAllowANullRemainder
{
  CGRectDivideNull(self.sourceRect, &_destination, NULL, 25.5, CGRectMinXEdge);
  XCTAssertEqual(self.destination, CGRectMake(1, 10, 25.5, 100), @"Not correct destionation rect");
  XCTAssertEqual(self.slice, CGRectZero, @"Not correct destionation rect");
}

- (void) testShouldAllowANullSlice
{
  CGRectDivideNull(self.sourceRect, NULL, &_slice, 25.5, CGRectMinXEdge);
  XCTAssertEqual(self.destination, CGRectZero, @"Not correct destionation rect");
  XCTAssertEqual(self.slice, CGRectMake(26.5, 10, 24.5, 100), @"Not correct destionation rect");
}

- (void) testShouldAllowANullSliceAndRemainder
{
  CGRectDivideNull(self.sourceRect, NULL, NULL, 25.5, CGRectMinXEdge);
  XCTAssertEqual(self.destination, CGRectZero, @"Not correct destionation rect");
  XCTAssertEqual(self.slice, CGRectZero, @"Not correct destionation rect");
}

- (void) testShouldBeAbleToSliceViewFrameDirectly
{
  CGRectDivideNull(self.view.frame, &_destination, NULL, 2.5, CGRectMinYEdge);
  XCTAssertEqual(self.destination, CGRectMake(1, 10, 50, 2.5), @"Not correct destionation rect");
}

#pragma mark -

- (void)setUp
{
  self.sourceRect = CGRectMake(1, 10, 50, 100);
  self.view = [[NSView alloc] initWithFrame:self.sourceRect];
}

@end
