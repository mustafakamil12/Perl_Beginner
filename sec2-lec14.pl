use strict;
use warnings;
use Data::Dumper;

$|=1;

sub main{
    my $input = 'test.csv';

    unless(open(INPUT, $input)){
        die "\nCannot open $input\n";
    }

    <INPUT>;

    while(my $line = <INPUT>){

        my @values = split ',',$line;
        print $values[0] . "\n";
        print join '|', @values ;
        print Dumper(@values);  # will not remove \n if exist as well it will add it's \n

    }
    close INPUT;
}

main();