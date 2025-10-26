import base64
import getpass
import hashlib
import os
import pathlib
import shutil
import pwd
import time

# PYCOREUTILS
# ===========
# Wrappers for a few GNU Coreutils, in order to treat the interpreter shell-like
# Will be interesting to see what transfers over easily, and what doesn't.
# Only works on Linux for now, and is a learning exercise.
# Only barebones functionality; no arguments at this time.
# Functions marked with "# EXPERIMENTAL" means I still need to actively test.

# 1. PYFILEUTILS
# ==============

def pychmod(): # EXPERIMENTAL
    os.chmod():

def pyls():
    print(sorted(os.listdir()))

def pymkdir(newdir):
    os.mkdir(newdir)

def pymkfifo(path): # EXPERIMENTAL
    os.mkfifo(path)

def pytouch(path):
    path.touch(path)

def pydf(): # EXPERIMENTAL
    os.statvfs()

def pyrealpath(path): # EXPERIMENTAL
    os.path.realpath(path)

def pysync(): # EXPERIMENTAL
    os.sync()

def pytruncate(path, length): # EXPERIMENTAL
    os.truncate(path, length)

# 2. PYTEXTUILS
# =============

def pybase32(text):
    bytetext = bytes(text)
    base64.b32encode(text, "utf-8") # NEED TO TEST



# 3. PYSHELLUTILS
# ===============

def pypwd():
    print(os.getcwd())

def pyecho():
    print(text)

def pyarch(): # EXPERIMENTAL
    os.uname().machine

def pydu(): # EXPERIMENTAL
    disk_usage()

def pyprintenv():
    os.system("printenv")

def pylogname():
    print(getpass.getuser())

def pyseq(): # EXPERIMENTAL
    range()
    
def pysleep(): # EXPERIMENTAL
    time.sleep()

def pywhoami():
    print(pwd.getpwuid(os.getuid()).pw_name)
    # WARNING: NOT FULLY TESTED YET; will still return logged in user, but not fully able to differentiate between user and user as root.

def pydirname(path): # EXPERIMENTAL
    os.path.dirname(path)

def pystat(): # EXPERIMENTAL
    os.stat()

def pyunlink(): # EXPERIMENTAL
    os.unlink():

# 4. OTHERUTILS
# =============

def pyclear():
    os.system('clear')

def pycd(path):
    os.chdir(path)
