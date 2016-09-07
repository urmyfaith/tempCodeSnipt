#import <Foundation/Foundation.h>
#import <objc/runtime.h>

/*

see http://blog.csdn.net/sponge_cmz/article/details/49755149
see code at: https://github.com/yuancaoscott/InstanceSizeForObjectC/blob/master/OC_%E5%AF%B9%E8%B1%A1%E5%8F%8A%E5%AF%B9%E8%B1%A1%E7%9A%84%E5%AE%9E%E4%BE%8B%E5%8F%98%E9%87%8F%E5%9C%A8%E5%A0%86%E4%B8%AD%E7%9A%84%E5%9C%B0%E5%9D%80_%E7%B1%BB%E5%AF%B9%E8%B1%A1%E5%A4%A7%E5%B0%8F/main.m

*/
@interface Person:NSObject<NSCopying>
{
	@public
	NSString  *_name;
	NSInteger _age;
	NSString  *_sex;
	
}
@property(nonatomic,strong) NSString  *name;
@property(nonatomic,assign) NSInteger age;
@property(nonatomic,strong) NSString *sex;
@end

@implementation Person 
- (id)copyWithZone:(NSZone *)zone
{

	Person *p = [[Person allocWithZone:zone] init];
	p.name = self.name;
	p.age = self.age;
	p.sex = self.sex;
	return p;
}
@end

int main(int argc, const char * argv[]) {
	@autoreleasepool {

#pragma mark - 对象及对象的实例变量在堆中的地址
		/**
		 * 定义Person类: 实例变量可见度为 @public
		 * 详见 Person类 文件
		 */

		/** 创建对象Person1, 并赋值 */
		Person *person1 = [[Person alloc] init];
		person1->_name = @"zhangsan";
		person1->_sex = @"male";
		person1->_age = 18;

#pragma mark - 显示对象大小的函数
		/** 直接显示 对象大小 . 需要导入<objc/runtime.h> 文件 */
		NSLog(@"size:%ld", class_getInstanceSize([person1 class]));

		NSLog(@"---%d---(person1)对象和对象的实例变量在堆中的地址---", __LINE__);
		NSLog(@"person1      add:%p", person1);
		NSLog(@"person1 name add:%p", &person1->_name);
		NSLog(@"person1 age  add:%p", &person1->_age);
		NSLog(@"person1 sex  add:%p", &person1->_sex);

		NSLog(@"---如果实例变量类型是对象类型, 指针内容是一个指针---");
		NSLog(@"---%d---(person1)实例变量的指针指向的地址---", __LINE__);
		NSLog(@"person1 name contant :%p", person1->_name);
		NSLog(@"person1 sex  contant :%p", person1->_sex);
		NSLog(@"字符串(zhangsan)   add:%p", @"zhangsan");
		NSLog(@"字符串(male)       add:%p", @"male");  /**< 结论实例变量的指针最终指向了字符串常量首地址 */

		NSLog(@"---如果实例变量类型是非对象类型, 指针内容即为值---");
		NSLog(@"person1 age  contant :%ld", (long)person1->_age);
		NSLog(@"person1 age  contant :%ld", person1->_age);


		/** 创建另一个对象Person2 */
		Person *person2 = [[Person alloc] init];
		person2 = person1;

		NSLog(@"---%d---(person2)对象和对象的实例变量在堆中的地址---", __LINE__);
		NSLog(@"person2      add:%p", person2);
		NSLog(@"person2 name add:%p", &person2->_name);
		NSLog(@"person2 age  add:%p", &person2->_age);
		NSLog(@"person2 sex  add:%p", &person2->_sex);  /**< 结论.person2 指向了person1的首地址person2 的实例变量地址也指向person1 的实例变量首地址 */

		NSLog(@"---%d---(person2)实例变量的指针指向的地址---", __LINE__);
		NSLog(@"person2 name contant :%p", person2->_name);
		NSLog(@"person2 sex  contant :%p", person2->_sex);
		NSLog(@"字符串(zhangsan)   add:%p", @"zhangsan");
		NSLog(@"字符串(male)       add:%p", @"male");


		/* 使用copy方法创建person3 对象 */
		Person *person3 = [person1 copy];

		NSLog(@"---%d---(person3)对象和对象的实例变量在堆中的地址---", __LINE__);
		NSLog(@"person3      add:%p", person3);
		NSLog(@"person3 name add:%p", &person3->_name);
		NSLog(@"person3 age  add:%p", &person3->_age);
		NSLog(@"person3 sex  add:%p", &person3->_sex);


		NSLog(@"---%d---(person3)实例变量的指针指向的地址---", __LINE__);
		NSLog(@"person3 name contant :%p", person3->_name);
		NSLog(@"person3 sex  contant :%p", person3->_sex);
		NSLog(@"字符串(zhangsan)   add:%p", @"zhangsan");
		NSLog(@"字符串(male)       add:%p", @"male");

	}
	return 0;
}