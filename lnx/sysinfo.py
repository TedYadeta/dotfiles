import getpass
import os
import platform
import socket

hostname = socket.gethostname()
arch = platform.machine()
os = platform.system()
user = getpass.getuser()
kerver = platform.release()
ipaddr = socket.gethostbyname(hostname)
pyver = platform.python_version()

print("Hostname:            " + hostname)
print("Architecture:        " + arch)
print("Operating System:    " + os)
print("Kernel Version:      " + kerver)
print("User:                " + user)
print("IP Address:          " + ipaddr)
print("Python Version:      " + pyver)
