use strict;
use warnings;
use Data::Dumper;
use Getopt::Std;

$|=1;

sub main{
    mySub(1,'testing',3);
}

sub mySub{
    print Dumper(@_);
    my ($langNo, $name, $result) = @_;

    print "$langNo, $name, $result\n";
}

main();