#include <stdio.h>

int gRekursiv(int n) {
	if (n <= 1) { return 1; }
	return((2 * gRekursiv(n - 1)) + (n * gRekursiv(n - 2)));
}

int gIterativ(int n) {
	int g1 = 4;
	int g2 = 1;
	int buffer = 0;
	if (n <= 1) { return 1; }
	if (n == 2) { return 4; }
	for (int i = 3; i <= n; i++) {
		buffer = 2 * g1 + i * g2;
		g2 = g1;
		g1 = buffer;
	}
	return buffer;
}

int gEndrekursiv(int n) {
	if (n <= 1) { return 1; }
	return g_help(n - 1, 3, 4, 1);
}

int g_help(int n, int i, int g1, int g2) {
	if (n <= 1) return g1;
	else return g_help(n - 1, i + 1, ((2 * g1) + (i * g2)), g1);
	
}

int main()
{
	int testInt = 30;
	printf("%d;", gRekursiv(testInt));
	printf("%d;", gIterativ(testInt));
	printf("%d;", gEndrekursiv(testInt));
	return 0;
}