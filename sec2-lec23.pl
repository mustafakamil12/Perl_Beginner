use strict;
use warnings;
use Data::Dumper;

$|=1;

sub main{

    my $input = 'test2.csv';

    unless(open(INPUT, $input)){
        die "\nCannot open $input\n";
    }

    <INPUT>;

    my @data;

    LINE: while(my $line = <INPUT>){

        # $line =~ s/^\s*//;
        # $line =~ s/\s*$//;

        # we can add series of filters as regex to filter our works.
        $line =~ s/^\s*|\s*$//g;    # substitute
        $line =~ s/\?|approx\.//g;  # substitute
        $line =~ /\S+/ or next;     # match

        chomp $line;

        my @values = split /\s*,\s*/, $line;

        if(scalar(@values) < 3){
            print "Invalid Line: $line\n";
            next;
        }

        foreach my $value(@values){
            if($value eq ''){
                print "Invalid line: $line\n";
                next LINE;
            }
        }

        my ($name, $payment, $date) = @values;

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

    print "Descartes " . $data[3]{"Name"} . "; Date: '" . $data[3]{"Date"} . "'\n";
}

main();
