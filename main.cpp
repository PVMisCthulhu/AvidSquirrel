#include <iostream>
#include <stdlib.h>
#include "Grombler.h"

using namespace std;

int main(int argc, char* argv[])
{	
	int amazingNumber = 7;
	Grombler* g = new Grombler;

	for (int i = 0; i < argc; i++)		
		if (strcmp(argv[i], "-g") == 0)
			if (argc > i + 1)
				amazingNumber = atoi(argv[i + 1]);

	cout << "Avid Squirrel!" << endl;
	cout << g->GrombleIntoString(amazingNumber);
	cout << " is grombled into ";
	cout << g->GrombleIntoString(g->Gromble(amazingNumber));
	cout << endl;		

	delete g;
	return 0;
}