#import <Foundation/Foundation.h>

@interface P:NSObject
@property(nonatomic,assign) double fsize;
@end


@implementation P
-(NSString *)readableFileSize{
	NSString  * str = nil;
	float size = self.fsize;
		if (size/1024.f/1024.f/1024.f > 1) {
			str = [NSString stringWithFormat:@"%0.fG",size/1024.f/1024.f/1024.f];
		} else if (size/1024.f/1024.f > 1) {
			str = [NSString stringWithFormat:@"%0.fM",size/1024.f/1024.f];
		} else if (size/1024.f > 1) {
			str = [NSString stringWithFormat:@"%0.fK",size/1024.f];
		} else {
			str = @"0KB";
		}
	return str;
}
@end

int main(int argc, char *argv[]) {
	@autoreleasepool {
		P *p = [[P alloc]init];
		p.fsize = 2000000000;
		NSLog(@"%@",[p readableFileSize]);
	}
}

/*
2016-07-13 10:09:29.758 Untitled 3[8552:79011] 2G
*/