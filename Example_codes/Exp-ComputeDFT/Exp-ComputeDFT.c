#include<stdio.h>
#include<math.h>

float x[50],X[50],*X_real,*X_imag;	

void main(void)
{
	int	N=8;
	int i,j;
	float pi=3.14159;

	X_real=(float *)malloc(N*sizeof(float));
	X_imag=(float *)malloc(N*sizeof(float));
	
	x[0]=10;
	x[1]=1;
	x[2]=2;
	x[3]=3;
	x[4]=4;
	x[5]=3;
	x[6]=2;
	x[7]=1;

		
	for(i=0;i<N;i++){
		X_real[i]=0.0;
		X_imag[i]=0.0;
		for(j=0;j<N;j++){
			X_real[i] +=x[j]*cos(2*pi/N*i*j);
			X_imag[i] -=x[j]*sin(2*pi/N*i*j);
			X[i]=X_real[i]*X_real[i]+X_imag[i]*X_imag[i];
		}
//		printf("%f %f %f\n",X[i],X_real[i],X_imag[i]);
	}
//	printf("finished\n");

}
