#!/usr/bin/perl
use strict;
use warnings;

use lib 'lib';

use TestOne;

my $fh = TestOne->new_tie('wibble');

print $fh "hello\n";

$fh->print("hello again\n");
$fh->printf("hello again\n");

printf $fh "%s foo!", 54;

my $foo = <$fh>;
print "foo is <$foo>\n";

