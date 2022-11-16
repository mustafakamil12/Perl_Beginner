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

    my @lines;
    my $count = 0;

    while(my $line = <INPUT>){

        chomp $line;
        # print "'$line'\n";

        # my @values = split ',',$line;
        my @values = split /\s*,\s*/,$line;
        # print $values[0] . "\n";
        # print join '|', @values ;
        # print Dumper(@values);

        # approach -1-
        # $lines[$count] = $line;
        # $count++;

        # approach -2-
        # push @lines, $line

        # approach -3-
        push @lines, \@values;
    }
    close INPUT;
    
    print "length of \@lines = " . scalar(@lines) . "\n";
    
    foreach my $line(@lines){
        # print "$line \n";
        print Dumper($line);
    }
}

main();