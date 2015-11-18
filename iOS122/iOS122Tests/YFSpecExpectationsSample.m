#import "Kiwi.h"
#import "YFKiwiCar.h"

SPEC_BEGIN(CarSpec)

describe(@"YFKiwiCar", ^{
    it(@"A Car Rule", ^{
        
        id car = [YFKiwiCar new];
        [[car should] beKindOfClass:[YFKiwiCar class]];
        [[car shouldNot] conformToProtocol:@protocol(NSCopying)];
        [[[car should] have:4] wheels];
        [[theValue([(YFKiwiCar *)car speed]) should] equal:theValue(42.0f)];
        [[car should] receive:@selector(changeToGear:) withArguments:@3];
        
        [car changeToGear: 3];
    });
    
    it(@"Scalar packing",^{
        [[theValue(1 + 1) should] equal:theValue(2)];
        [[theValue(YES) shouldNot] equal:theValue(NO)];
        [[theValue(20u) should] beBetween:theValue(1) and:theValue(30.0)];
        
        YFKiwiCar * car = [YFKiwiCar new];
        [[theValue(car.speed) should] beGreaterThan:theValue(40.0f)];
    });
    
    
});

SPEC_END