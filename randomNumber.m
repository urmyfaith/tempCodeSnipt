#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
	@autoreleasepool {
		
		for (int i = 0 ; i < 100; i++)
		{
			int x = arc4random() % 7 + 1;
			NSString *string = [NSString stringWithFormat:@"%02zd",x];
			NSLog(@"string=%@",string);
		}
	}
}