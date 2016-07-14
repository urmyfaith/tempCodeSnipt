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

//下面的方法有问题
- (NSInteger)stringLengthContainChinese
{
	NSInteger  strlength = 0;
	char* p = (char*)[self cStringUsingEncoding:NSUnicodeStringEncoding];
	for (NSInteger i=0 ; i<[self lengthOfBytesUsingEncoding:NSUnicodeStringEncoding] ;i++) {
		printf("%c",*p);
		if (*p) {
			p++;
			strlength++;
		}else{
			p++;
		}
	}
	return strlength;
}

@end



int main(int argc, char *argv[]) {
	@autoreleasepool {
		NSString *str = @"一二三四五六七八a";
		
		NSLog(@"%zd",[str stringInclodeChineseLength]);	//output:17 		
		NSLog(@"%zd",[str stringLengthContainChinese]);	//output:16
	}
}