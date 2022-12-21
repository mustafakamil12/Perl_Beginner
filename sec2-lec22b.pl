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

    LINE: while(my $line = <INPUT>){

        # check if the line empty.
        $line =~ /\S+/ or next;

        chomp $line;

        my @values = split /\s*,\s*/, $line;

        # check if teh line missed any value
        if(scalar(@values) < 3){
            print "Invalid Line: $line\n";
            next;
        }

        #check if there's any empty value
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

    print "Descartes " . $data[3]{"Name"} . "\n";
}

main();
