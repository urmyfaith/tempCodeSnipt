#include <stdio.h>

int main(int argc, char *argv[]) {
	float z = ({
		4.0;
		5.0;
	});
	printf("z = %.2f",z);
}