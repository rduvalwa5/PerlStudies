=Begin Comment
	 mode	operand
	 read	<
	 write	>
	 append	>>

	Perl read file in scalar context
	In order to read from a file in read mode, you put the filehandle variable inside angle brackets as follows:

	 <FH>
	
	To read the next line of the file with newline included, you use the following syntax:
	
	$line = <FH>;
	
	You can use the Perl while loop to read a file line by line to the end of the file:

	 while(<FH>){
    	#...
		}
=cut

#!/usr/bin/perl
use warnings;
use strict;

my $filename = 'test.txt';

open(FH, '<', $filename) or die $!;
print "Start read \n";
while(<FH>){
   print $_;}

close(FH);