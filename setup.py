from distutils.core import setup
from distutils.extension import Extension
from Cython.Distutils import build_ext

libs = ["asound", "pthread", "rtmidi"]

setup(ext_modules=[Extension("midi", ["hello_midi.pyx", "aux.cpp"], language="c++",libraries=libs,extra_compile_args=["-std=c++11", "-Wl,--no-as-needed"])],
      cmdclass = {'build_ext': build_ext})
