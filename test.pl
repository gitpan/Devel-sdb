# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

######################### We start with some black magic to print on failure.

BEGIN { $| = 1; print "1..1\n"; }
END {print "not ok 1\n" unless $loaded;}
$ENV{'SDB_TEST'} = 1;
use Devel::sdb;
$loaded = 1;
print "ok 1\n";

######################### End of black magic.
