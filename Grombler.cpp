#include <string>
#include <sstream>
#include <stdio.h>
#include <stdlib.h>
#include "Grombler.h"

const int Grombler::GROMBLE_FACTOR = 50;

int Grombler::Gromble(int grombleTarget)
{
	return grombleTarget += (rand() % GROMBLE_FACTOR) - (rand() % GROMBLE_FACTOR);
}

std::string Grombler::GrombleIntoString(int grombleTarget)
{
	std::stringstream ss;
	ss << grombleTarget;
	return ss.str();
}