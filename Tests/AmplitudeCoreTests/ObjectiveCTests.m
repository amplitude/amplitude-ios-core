//
//  ObjectiveCTests.m
//  AmplitudeCoreTests
//
//  Created by Brian Giori on 1/10/22.
//

#import <Foundation/Foundation.h>

#import <XCTest/XCTest.h>
#import <AmplitudeCore/AmplitudeCore-Swift.h>
#import <dispatch/dispatch.h>

@interface ObjectiveCTests : XCTestCase

@end

@implementation ObjectiveCTests

- (void)testObjectiveCBasic {
    AmplitudeCore* core = [AmplitudeCore getInstance:@"test"];
    __block AnalyticsEvent* actualEvent = nil;
    [[core analyticsConnector] setEventReceiver:^(AnalyticsEvent * _Nonnull event) {
        actualEvent = event;
    }];
    AnalyticsEvent* event = [[AnalyticsEvent alloc] initWithEventType:@"test-event" eventProperties:nil userProperties:nil];
    [[core analyticsConnector] logEventWithEvent:event];
    XCTAssertEqual([actualEvent eventType], @"test-event");
}

@end
