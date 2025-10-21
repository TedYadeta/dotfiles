import base64                                                                                                                                                                                                                                 
import getpass
import os
import pathlib
import pwd
     
# Wrappers for a few GNU Coreutils, in order to treat the interpreter shell-like
# Will be interesting to see what transfers over easily, and what doesn't.
# Only works on Linux for now, and is a learning exercise.
# Only barebones functionality; no arguments at this time.
     
# 1. PYFILEUTILS
# ==============
     
def pyls():
    print(sorted(os.listdir()))
     
def pymkdir(newdir):
    os.mkdir(newdir)
     
def pymkfifo(path):
    os.mkfifo(path) # NEED TO TEST
     
def pytouch(path):
    path.touch(path)
     
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
     
def pyarch():
    os.system("arch")
     
def pyprintenv():
    os.system("printenv")
     
def pylogname():
    print(getpass.getuser())

def pywhoami():
    print(pwd.getpwuid(os.getuid()).pw_name)
    # WARNING: NOT FULLY TESTED YET; will still return logged in user, but not fully able to differentiate between user and user as root.
    
# 4. OTHERUTILS
# =============
     
def pyclear():
    os.system('clear')
     
def pycd(path):
    os.chdir(path) 
