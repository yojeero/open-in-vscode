// Once upon a time... Objective-C example
#import <Foundation/Foundation.h>

@interface Vampire : NSObject
@property NSString *location;
@property int birth;
@property int death;
- (int)age;
@end

@implementation Vampire
- (int)age { return _death - _birth; }
@end

int main() {
    @autoreleasepool {
        Vampire *d = [Vampire new];
        d.location = @"Transylvania";
        d.birth = 1428; d.death = 1476;
        NSLog(@"%@ age: %d", d.location, [d age]);
    }
    return 0;
}
