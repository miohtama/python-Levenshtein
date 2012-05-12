.. contents ::

Maintainer needed
-------------------

I (Mikko Ohtamaa) am not currently maintaining this code. I just pulled in to Github for general good (was not available in public repo before).
So if you file any issues I won't be looking into them.

Introduction
------------

The Levenshtein Python C extension module contains functions for fast
computation of

* Levenshtein (edit) distance, and edit operations

* string similarity

* approximate median strings, and generally string averaging

* string sequence and set similarity

It supports both normal and Unicode strings.

Python 2.2 or newer is required.

StringMatcher.py is an example SequenceMatcher-like class built on the top of
Levenshtein.  It misses some SequenceMatcher's functionality, and has some
extra OTOH.

Levenshtein.c can be used as a pure C library, too.  You only have to define
NO_PYTHON preprocessor symbol (-DNO_PYTHON) when compiling it.  The
functionality is similar to that of the Python extension.  No separate docs
are provided yet, RTFS.  But they are not interchangeable:

* C functions exported when compiling with -DNO_PYTHON (see Levenshtein.h)
  are not exported when compiling as a Python extension (and vice versa)

* Unicode character type used with -DNO_PYTHON is wchar_t, Python extension
  uses Py_UNICODE, they may be the same but don't count on it

Documentation
--------------

gendoc.sh generates HTML API documentation,
you probably want a selfcontained instead of includable version, so run
in ``./gendoc.sh --selfcontained``.  It needs Levenshtein already installed
and genextdoc.py.

License
-----------

Levenshtein can be copied and/or modified under the terms of GNU General
Public License, see the file COPYING for full license text.

History
-------

This package was long missing from PyPi and available as source checkout only.
We needed to restore this package for `Go Mobile for Plone <http://webandmobile.mfabrik.com>`_
and `Pywurfl <http://celljam.net/>`_ projects which depend on this.

The project is not under active development as far as the maintainer knows.

Source code
-----------

* http://github.com/miohtama/python-Levenshtein/tree/

Authors
-------

* Maintainer: `Mikko Ohtamaa <http://opensourcehacker.com>`_ - I am not actively doing anything
  for this, please feel free take over PyPi and Github administration

* David Necas (Yeti) <yeti at physics.muni.cz>




