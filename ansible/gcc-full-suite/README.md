GCC Full Suite
=========

An Ansible playbook written to help install the entire suite of GCC Compilers on Linux

Requirements
------------

Requires 'become: yes' and a valid Python interpreter

Role Variables
--------------

None required. Installs gcc, g++, gnat, gdc, gfortran and gccgo, dependent on how the specific package manager requires it.

Dependencies
------------

Python 3.11.7 minimum.

Tested on:
----------
- Debian Trixie 15
- RHEL (Rocky 9 and Fedora 42)


License
-------

GPLv3

Author Information
------------------

Author is Ted Yadeta, on Github,
