use strict;
use warnings;
use Data::Dumper;

$|=1;

sub main{
    my %hash1 = (
        "name" => "Mustafa",
        "job" => "Sr. S.W. Engineer",
    );

    my %hash2 = (
        "name" => "Muhanned",
        "job" => "Sr. S.W. Engineer",
    );

    my @details = (
        \%hash1,
        \%hash2,
    );

    print Dumper(@details);
    print "$details[0]{'name'}\n";
}

main();