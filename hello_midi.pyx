from libcpp.vector cimport vector

cdef extern from "hello_midi.h":
	cdef cppclass MidiInput:
		void mycallback(double deltatime, vector[unsigned char]* message, void* userData) with gil
		int midi_listen() nogil

cdef void midi_init(MidiInput* ob):
	with nogil:
		ob.midi_listen()

cdef class MidiListen:
	cdef MidiInput* thisptr
	def __cinit__(self):
		self.thisptr = new MidiInput()
	def start_midi(self): 
		midi_init(self.thisptr)

		
