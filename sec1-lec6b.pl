use strict;
use warnings;

$|=1;

sub main{
    my $output = 'output.txt';     
    open(OUTPUT,'>'.$output) or die "unable to open $output";   # concatenate the special charcter with file name within open()
    print "Hello There\n";  # print to the screen
    print OUTPUT "Hi Mustafa\n"; # print to OUTPUT 
    close(OUTPUT);
}

main();