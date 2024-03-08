#include <stdio.h>
#include <stdint.h>

int main(void) {
	uint32_t *regmap = (uint32_t *)0x43C00000;
	/*
	for (size_t i = 0; i < 16; i++) {
		for (size_t j = 0; j < 16; j++) {
			regmap[0] = i;
			regmap[1] = j;
			regmap[2] = 0;
			size_t s = regmap[0];
			printf("%2zu + %2zu = %3zu (%s)\n",i,j,s,(s==i+j)?"COR":"ERR");
		}
	} */
	int s, c;
	printf("\nBEGIN TESTS\n\n");
	//1+1=2
	regmap[0] = 1;
	regmap[1] = 1;
	regmap[2] = 0;
	s = regmap[0];
	c = regmap[2];
	printf(s == 2 ? "S 1 COR\n" : "S 1 ERR\n");
	printf(c == 0 ? "C 1 COR\n" : "C 1 ERR\n");
	//30+67=97
	regmap[0] = 30;
	regmap[1] = 67;
	regmap[2] = 0;
	s = regmap[0];
	c = regmap[2];
	printf(s == 97 ? "S 2 COR\n" : "S 2 ERR\n");
	printf(c == 0 ? "C 2 COR\n" : "C 2 ERR\n");
	//(2^32 - 1) + (2^32 - 1) = (2^32 - 2) + cout
	regmap[0] = 0xFFFFFFFF;
	regmap[1] = 0xFFFFFFFF;
	regmap[2] = 0;
	s = regmap[0];
	c = regmap[2];
	printf(s == 0xFFFFFFFE ? "S 3 COR\n" : "S 3 ERR\n");
	printf(c == 1 ? "C 3 COR\n" : "C 3 ERR\n");
	//30-15=15
	regmap[0] = 30;
	regmap[1] = 15;
	regmap[2] = 1;
	s = regmap[0];
	c = regmap[2];
	printf(s == 15 ? "S 4 COR\n" : "S 4 ERR\n");
	printf(c == 1 ? "C 4 COR\n" : "C 4 ERR\n");
	//500000-500000=0
	regmap[0] = 500000;
	regmap[1] = 500000;
	regmap[2] = 1;
	s = regmap[0];
	c = regmap[2];
	printf(s == 0 ? "S 4 COR\n" : "S 4 ERR\n");
	printf(c == 1 ? "C 4 COR\n" : "C 4 ERR\n");
	//0-500000=-500000
	regmap[0] = 0;
	regmap[1] = 500000;
	regmap[2] = 1;
	s = regmap[0];
	c = regmap[2];
	printf(s == -500000 ? "S 5 COR\n" : "S 5 ERR\n");
	printf(c == 0 ? "C 5 COR\n" : "C 5 ERR\n");
	//460185+5475014=5935199
	regmap[0] = 460185;
	regmap[1] = 5475014;
	regmap[2] = 0;
	s = regmap[0];
	c = regmap[2];
	printf(s == 5935199 ? "S 6 COR\n" : "S 6 ERR\n");
	printf(c == 0 ? "C 6 COR\n" : "C 6 ERR\n");
	//4074-5475943=-5471869
	regmap[0] = 4074;
	regmap[1] = 5475943;
	regmap[2] = 1;
	s = regmap[0];
	c = regmap[2];
	printf(s == -5471869 ? "S 7 COR\n" : "S 7 ERR\n");
	printf(c == 0 ? "C 7 COR\n" : "C 7 ERR\n");
	printf("\nTESTS COMPLETE\n");

	return 0;
}
