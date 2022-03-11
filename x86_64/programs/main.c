#include<stdio.h>
#include"assembly_functions.h"

int main() {
	long sum = add(4,1,2,3,4,5,6,7); 
	printf("%ld \n",sum);

	sum = add(3,1,2,1,1); 
	printf("%ld \n",sum);
	
	return 0;
}
//  x/24bd $rbp+16