#include <iostream>
#include "Grombler.h"

using namespace std;

int main()
{	
	int amazingNumber = 7;
	Grombler* g = new Grombler;
	cout << "Avid Squirrel!" << endl;
	cout << g->GrombleIntoString(amazingNumber);
	cout << " is grombled into ";
	cout << g->GrombleIntoString(g->Gromble(amazingNumber));
	cout << endl;	
	delete g;
	return 0;
}