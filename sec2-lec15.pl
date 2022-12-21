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

        chomp $line;    # used to remove spaces that elements have.
        # print "'$line'\n";

        # my @values = split ',',$line;
        $line =~ s/\r?\n/''/g;     # replace or substitution.
        my @values = split /\s*,\s*/,$line;
        # print $values[0] . "\n";
        print join '|', @values ;
        print Dumper(@values);

    }
    close INPUT;
}

main();