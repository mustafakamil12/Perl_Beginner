use strict;
use warnings;

$|=1;

sub main{
    my $input = 'test.csv';

    unless(open(INPUT, $input)){
        die "\nCannot open $input\n";
    }

    <INPUT>;  # to pass reading header lines.

    while(my $line = <INPUT>){
        my @values = split ',',$line;
        print $values[0] . "\n";
    }
    close INPUT;
}

main();