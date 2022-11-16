use strict;
use warnings;
use Data::Dumper;

$|=1;

sub main{

    my $input = 'test1.csv';

    unless(open(INPUT, $input)){
        die "\nCannot open $input\n";
    }

    <INPUT>;

    my @data;

    while(my $line = <INPUT>){

        $line =~ /\S+/ or next; # to skip any space in the cvs doc.

        chomp $line;

        my ($name, $payment, $date) = split /\s*,\s*/, $line;

        my %values = (
            "Name" => $name,
            "Payment" => $payment,
            "Date" => $date,
        );

        push @data, \%values;
    }
    
    close INPUT;

    foreach my $data(@data){
        print $data->{"Payment"} . "\n";
    }

    print "Descartes " . $data[3]{"Name"} . "\n";
}

main();
