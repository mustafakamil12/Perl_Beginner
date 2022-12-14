use strict;
use warnings;

$|=1;

sub main{
    my $output = '> output.txt';     #There's special charcter here (>)
    open(OUTPUT,$output) or die "unable to open $output";
    close(OUTPUT);
}

main();