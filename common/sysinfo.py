import getpass
import os
from os import environ
import platform
import socket

hostname = socket.gethostname()
opsys = platform.system()
arch = platform.machine()
user = getpass.getuser()
kerver = platform.release()
shell = (environ['SHELL'])
term = os.ctermid()
ipaddr = socket.gethostbyname(hostname)
pyver = platform.python_version()

print("Hostname:            " + hostname)
print("Operating System:    " + opsys)
print("Architecture:        " + arch)
print("Kernel Version:      " + kerver)
print("Shell:               " + shell)
print("Terminal:            " + term)
print("User:                " + user)
print("IP Address:          " + ipaddr)
print("Python Version:      " + pyver)
