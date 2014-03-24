#ifndef GROMBLER__H
#define GROMBLER__H

#include <string>

class Grombler
{
	private:
		const static int GROMBLE_FACTOR;
	public:
		int Gromble(int);
		std::string GrombleIntoString(int);
};

#endif