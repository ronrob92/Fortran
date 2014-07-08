#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define SIZE 100

using namespace std;


int main(){

double a[SIZE][SIZE]={{0.}};
double b[SIZE][SIZE]={{0.}};
double x[SIZE]={0.};
double y[SIZE]={0.};
srand(time(NULL));	

for (int i=0; i < SIZE; i++) {
  x[i] = rand()/(double)RAND_MAX;
  y[i] = rand()/(double)RAND_MAX;
}

for (int i=0; i < SIZE; i++) {
  for (int j=0; j < SIZE; j++) {
    a[i][j] = 3*a[i][j]*x[j]*y[i];
  }
}

for (int i=0; i < SIZE; i++) {
  y[i] = x[i]*y[i];
}

for (int i=0; i < SIZE; i++) {
  for (int j=0; j < SIZE; j++) {
    y[i] = a[i][j]*x[j];
  }
} 

for (int i=0; i < SIZE; i++) {
  for (int j=0; j < SIZE; j++) {
    b[i][j] =  a[j][i];
  }
}


return 0;
}
