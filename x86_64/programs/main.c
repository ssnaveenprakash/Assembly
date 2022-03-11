#include<stdio.h>
#include"assembly_functions.h"

int main() {
	long sum = add(3,2,3,4,1); 
	printf("%ld \n",sum);

	sum = add(3,1,2,1,1); 
	printf("%ld \n",sum);
	
	return 0;
}