#include <stdio.h>

int main(int argc, char** argv)
{
	char buf[16];
	int c, i = 0;

	while (1) {
		c = getc(stdin);
		if (c < 0) {
			break;
		}

		buf[i] = (char)c;
		i += 1;
	}
	buf[i] = 0;

	puts(buf);

	return 0;
}
