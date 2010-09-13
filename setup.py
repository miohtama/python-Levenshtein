from distutils.core import setup, Extension

extLevensthein = Extension('Levenshtein',
                           sources = ['Levenshtein.c'],
                           )

setup(name = 'python-Levenshtein',
      version = '0.10.1',
      description = 'Python extension computing string distances and similarities.',
      author = 'David Necas (Yeti)',
      author_email = 'yeti@physics.muni.cz',
      license = 'GNU GPL',
      url = 'http://trific.ath.cx/python/levenshtein/',
      long_description = '''
Levenshtein computes Levenshtein distances, similarity ratios, generalized
medians and set medians of Strings and Unicodes.  Becuase it's implemented
in C, it's much faster than corresponding Python library functions and
methods.
''',
      ext_modules = [extLevensthein])

