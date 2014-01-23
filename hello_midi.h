// cmidiin.cpp

#include <iostream>
#include <cstdlib>
#include "RtMidi.h"
#include <thread>

class MidiInput{
public:
	static void mycallback( double deltatime, std::vector< unsigned char > *message, void *userData );
	static int midi_listen();
};

