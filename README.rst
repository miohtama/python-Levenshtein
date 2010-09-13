
Levenshtein Python extension and C library.

The Levenshtein Python C extension module contains functions for fast
computation of
- Levenshtein (edit) distance, and edit operations
- string similarity
- approximate median strings, and generally string averaging
- string sequence and set similarity
It supports both normal and Unicode strings.

Please see PKG-INFO for basic info, NEWS for news and the top of
Levenshtein.c for TODO.

Python 2.2 or newer is required.

StringMatcher.py is an example SequenceMatcher-like class built on the top of
Levenshtein.  It misses some SequenceMatcher's functionality, and has some
extra OTOH.

Levenshtein.c can be used as a pure C library, too.  You only have to define
NO_PYTHON preprocessor symbol (-DNO_PYTHON) when compiling it.  The
functionality is similar to that of the Python extension.  No separate docs
are provided yet, RTFS.  But they are not interchangeable:
- C functions exported when compiling with -DNO_PYTHON (see Levenshtein.h)
  are not exported when compiling as a Python extension (and vice versa)
- Unicode character type used with -DNO_PYTHON is wchar_t, Python extension
  uses Py_UNICODE, they may be the same but don't count on it

gendoc.sh generates HTML API documentation (the same as on my www pages),
you probably want a selfcontained instead of includable version, so run
in `./gendoc.sh --selfcontained'.  It needs Levenshtein already installed
and genextdoc.py (http://trific.ath.cx/Ftp/python/genextdoc.py).

Levenshtein can be copied and/or modified under the terms of GNU General
Public License, see the file COPYING for full license text.

