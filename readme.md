Using Cython, when the extension is initialized via the start_midi() function,
The GIL is released, allowing MIDI data input on a separate thread.
This has been tested as working alongside a GTK+ application.

to compile the extension:
python setup.py build_ext -i
