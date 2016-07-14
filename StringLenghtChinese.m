#import <Foundation/Foundation.h>
@interface NSString (Extension)
//计算包括中文字符的长度.
- (NSInteger)stringInclodeChineseLength;
- (NSInteger)stringLengthContainChinese;
@end

@implementation NSString(Extension)
- (NSInteger)stringInclodeChineseLength {
	NSStringEncoding enc = CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000);
	NSData* da = [self dataUsingEncoding:enc];
	return [da length];
}

- (NSInteger)stringLengthContainChinese
{
	NSInteger  strlength = 0;
	char* p = (char*)[self cStringUsingEncoding:NSUnicodeStringEncoding];
	for (NSInteger i=0 ; i<[self lengthOfBytesUsingEncoding:NSUnicodeStringEncoding] ;i++) {
		if (*p) {
			strlength++;
		}
		p++;
	}
	return strlength;
}

@end



int main(int argc, char *argv[]) {
	@autoreleasepool {
		NSString *str = @"abc中国";
		
		NSLog(@"%zd",[str stringInclodeChineseLength]);	//output:7
		
		NSLog(@"%zd",[str stringLengthContainChinese]);	//output:7
	}
}