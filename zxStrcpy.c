#include <stdio.h>

char *zxStrncpy(char *dest, const char *src, size_t n)
{
	size_t i;

	for (i = 0; i < n && src[i] != '\0'; i++)
		dest[i] = src[i];

	for ( ; i < n; i++)
		dest[i] = '\0';

	return dest;
}

int main(int argc, char *argv[]) {

	char chararray[6];

	zxStrncpy(chararray, "abc", 4);
	printf("%s\n",chararray);
}