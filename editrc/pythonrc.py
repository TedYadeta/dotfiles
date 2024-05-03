# pythonrc.py - For custom functions in the Python interpreter

# clear function


import os # Need this for the clear function
import readline # Need this for tab autocompletion

clear() = lambda: os.system(clear)
clear()

# Tab Completion

readline.parse_and_bind('tab: complete')
