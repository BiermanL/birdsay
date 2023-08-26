#include<stdio.h>
#include<string.h>

int main(int argc, char *argv[])
{
	if(argc == 1)
	{
		printf("ERROR: no input\n");
		return 0;
	}
	printf(" ");
	for(int i=0; i <= strlen(argv[1]);i++)
	{
		printf("-");
	}
	printf(" \n");
	printf("< %s >\n",argv[1]);
	printf(" ");
	for(int i=0; i<= strlen(argv[1]);i++)
	{
		printf("-");
	}
	printf(" \n");
	printf("\t\\\n\t \\\n\t  o7\n");
	printf("\t/| |\n\t  ;;\n");
	return 0;
}
