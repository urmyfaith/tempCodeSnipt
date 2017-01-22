#include <iostream>

using namespace std;
int main(int argc, char *argv[]) {
		char s[256] = {0};			// 定义一个数组
		memset(s, 0x01, sizeof(s));	// 用0xCC填充
		printf("%s\n", s);			// 输出
		return 1;
}