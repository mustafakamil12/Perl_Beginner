use strict;
use warnings;

use Data::Dumper;

$|=1;

sub main{
    my %months = (
        "Jan" => 1,
        "Feb" => 2,
        "Mar" => 3,
        "Apr" => 4,
    );

    print $months{"Jan"} . "\n";
    print $months{Jan} . "\n";

    my %days = (
        1 => "Monday",
        2 => "Tuesday",
        3 => "Wednesday",
        4 => "Thursday",
    );

    my @months = keys %months;
    foreach my $month(@months){
        my $value = $months{$month};
        print "$month: $value \n";
    }

}

main();