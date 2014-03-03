#include<stdio.h>
#include<math.h>

float buffer[100];
float gain=2.0;

void cal_cos(void)
{
	int i=0;

	for(i=0;i<100;i++){
		buffer[i]=gain*cos(2*3.14*i/100);
	}
}


void main(void)
{
	while(1){
		cal_cos();
	}
}
