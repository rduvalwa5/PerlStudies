=Begin comment

 mode	operand
 read	<
 write	>
 append	>>
=cut


#!/usr/bin/perl
use warnings;
use strict;

my $filename = '/Users/rduvalwa2/Code_Projects/Perl_Tutor/Perl_Workspace/PerlStudies/Perl Files/test.txt';

open(FH, '<', $filename) or die $!;

print("File $filename opened successfully!\n");

close(FH);

my $filename2 = 'test.txt';

open(FH, '<', $filename2) or die $!;

print("File $filename2 opened successfully!\n");

close(FH);