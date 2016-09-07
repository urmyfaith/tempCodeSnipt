#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
	@autoreleasepool {
		
		NSIndexPath *indexPath1 = [NSIndexPath indexPathWithIndex:3];
		NSLog(@"%@",indexPath1);
		
		NSIndexPath *indexPath3 = [[NSIndexPath alloc]initWithIndex:3];
		NSLog(@"%@",indexPath3);
		
		NSUInteger indexes[] = {1,3,2};
		NSIndexPath *indexPath2 = [NSIndexPath indexPathWithIndexes:indexes length:3];
		NSLog(@"%@",indexPath2);
		
	
		
		NSIndexPath *indexPath4 = [[NSIndexPath alloc]initWithIndexes:indexes length:3];
		NSLog(@"%@",indexPath4);
		
	}
}