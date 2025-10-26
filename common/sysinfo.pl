#!/usr/bin/env perl

use strict;
use warnings;
use Config;
use Sys::Hostname;
use POSIX;
use Socket;

my $host = hostname;
my $term = POSIX::ctermid();
my $user = POSIX::getlogin();
my $addr = inet_ntoa(scalar gethostbyname( $host || 'localhost' )); 


print "Hostname:         " . $host  . "\n";
print "Operating System: " . $Config{osname} . "\n";
print "Architecture:     " . $Config{archname} . "\n";
print "Kernel Version:   " . $Config{osvers} . "\n";
print "Shell:            " . $ENV{SHELL} . "\n";
print "Terminal:         " . $term . "\n";
print "User:             " . $user . "\n";
print "IP Address:       " . $addr . "\n";
print "Perl Version:     " . $Config{PERL_REVISION} . "." .  $Config{PERL_SUBVERSION} . "." .  $Config{PERL_VERSION} . "\n";

