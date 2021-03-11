=Begin comment
https://www.perltutorial.org/perl-write-to-file/

Summary: in this tutorial, you will learn how to write text to file using the print() function. We will give you several 
examples of writing to files.

Before going forward with this tutorial, you need to know how to open a file in Perl. If you want to read from a file, 
follow the reading from a file tutorial.

=cut

#!/usr/bin/perl
use warnings;
use strict;

my $src = 'test.txt';
my $des = 'test4.txt';

# open source file for reading
open(SRC,'<',$src) or die $!;

# open destination file for writing
open(DES,'>',$des) or die $!;

print("copying content from $src to $des\n");

while(<SRC>){
   print DES $_;	
}
print DES "\n\nAdditional line!";

# always close the filehandles
close(SRC);
close(DES);

print "File content copied successfully!\n";