#include <stdio.h>

int main(int argc, char *argv[]) {
	
	struct person{  
		int age;  
		float height;  
	}; 


	struct person zx = {
			.age = 100,
			.height = 200.0
		};
		
	printf("age = %zd\theight = %.2f", zx.age, zx.height);
	
	return 0;
}