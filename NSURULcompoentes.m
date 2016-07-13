#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
	@autoreleasepool {
		NSURL *url = [NSURL URLWithString:@"http://baidu.com/hello/world.jpg?imageView2/1/w/640/h/359"];
		NSLog(@"absoluteString:\t%@",url.absoluteString);
		NSLog(@"schema:\t%@",url.scheme);
		NSLog(@"host:\t%@",url.host);
		NSLog(@"path:\t%@",url.path);
		NSLog(@"query:\t%@",url.query);
		NSLog(@"relativePath:\t%@",url.relativePath);
		
		NSString *schema = url.scheme;
		NSLog(@"%@",[schema stringByAppendingPathComponent:url.host]);
		NSLog(@"%@",[url.host stringByAppendingPathComponent:url.path]);
		
		NSLog(@"pathComponents%@",url.pathComponents);
		
		NSMutableArray *compoentes =  url.pathComponents.mutableCopy;
		if (compoentes.count > 0) {
			[compoentes removeObjectAtIndex:0];
		    NSLog(@"%@",[compoentes componentsJoinedByString:@"/"]);
		}
	}
}

/*
 Untitled[8078:75648] absoluteString:	http://baidu.com/hello/world.jpg?imageView2/1/w/640/h/359
 Untitled[8078:75648] schema:	http
 Untitled[8078:75648] host:	baidu.com
 Untitled[8078:75648] path:	/hello/world.jpg
 Untitled[8078:75648] query:	imageView2/1/w/640/h/359
 Untitled[8078:75648] relativePath:	/hello/world.jpg
 Untitled[8078:75648] http/baidu.com
 Untitled[8078:75648] baidu.com/hello/world.jpg
 Untitled[8078:75648] pathComponents(
 Untitled[8078:75648] hello/world.jpg

*/