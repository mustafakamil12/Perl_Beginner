use strict;
use warnings;

$|=1;

sub main{
    my $input = 'test1.csv';

    unless(open(INPUT, $input)){
        die "Unable to open $input\n";
    }
    
    <INPUT>;

    my @data;

    while(my $line = <INPUT>){
        chomp $line;
        my($Name,$Payment,$Date) = split /\s*,\s*/,$line;

        my %values = (
            "Name" => $Name,
            "Payment" => $Payment,
            "Date" => $Date,
        );

        push @data, \%values;
    }
    close INPUT;

    foreach my $data(@data){
        print "$data->{'Payment'}\n";
    }
}

main();