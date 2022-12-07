use strict;
use warnings;
use Data::Dumper;
use Getopt::Std;

$|=1;

=pod
    This is ACME XML parser version 1.0
    use with care.
=cut

sub main{
    my %opts;

    # Get command line options -> yousif
    getopts('af:c', \%opts);

    if(!checkusage()){
        usage();
    }

}

sub checkusage{
    return 0;
}

sub usage{
    my $help = <<USAGE;

    Hello
    Please advise we have
    Incorrect informations

USAGE
    die $help;
}

main();