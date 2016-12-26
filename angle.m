#import <Foundation/Foundation.h>

@interface Test: NSObject
- (CGFloat)angleBetweenPoints:(CGPoint)first and: (CGPoint)second;
@end

@implementation Test
- (CGFloat)angleBetweenPoints:(CGPoint)first and: (CGPoint)second {

	CGFloat height = second.y - first.y;

	CGFloat width = second.x - first.x;

	CGFloat rads = atan(width/height);

	CGFloat r = 0;

	if ((second.x>first.x)&&(second.y<first.y)) {
		r = (180-(180 * rads / M_PI));
	}else if ((second.x<first.x)&&(second.y>first.y)) {
		r = -(180 * rads / M_PI);
	}else if ((second.x>first.x)&&(second.y>first.y)) {
		r = (360 - (180 * rads / M_PI));
	}else if ((second.x<first.x)&&(second.y<first.y)) {
		r = (180-(180 * rads / M_PI));
	}

	return r;

}
@end

int main(int argc, char *argv[]) {
	@autoreleasepool {
		Test *test = [Test new];
//		CGFloat angle1 =  [test angleBetweenPoints:CGPointMake(3, 3) and:CGPointMake(1, 1)];
//		NSLog(@"%.2f",angle1);
//		
//		CGFloat angle2 =  [test angleBetweenPoints:CGPointMake(3, 3) and:CGPointMake(5, 1)];
//		NSLog(@"%.2f",angle2);
		
		CGFloat angle3 =  [test angleBetweenPoints:CGPointMake(3, 3) and:CGPointMake(3, 1)];
		NSLog(@"%.2f",angle3);
		
//		CGFloat angle4 =  [test angleBetweenPoints:CGPointMake(3, 3) and:CGPointMake(5, 3)];
//		NSLog(@"%.2f",angle4);

		NSArray *array = @[];
	}
}