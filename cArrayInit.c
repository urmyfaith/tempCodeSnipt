#include <stdio.h>
#include <string.h>

void printArray(char *a,int length)
{
    for (int i = 0 ; i < length; i++) {
        printf("%zd\n",a[i]);
    }
    printf("-------\n");
}

void testMemset()
{
    char str[4];
    memset(str, 0, sizeof(str));
    printArray(str,4);
}

void testArrayInit01()
{
    char str[4] = {0};
    printArray(str,4);
}

void testArrayInit02()
{
    char str[4] = {'a', 'A'};
    printArray(str,4);
}

void testArrayInit03()
{
    char str[4] = {1};
    printArray(str,4);
}

int main(int argc, const char * argv[]) {
    
    testMemset();
    testArrayInit01();
    testArrayInit02();
    testArrayInit03();
    
    return 0;
}