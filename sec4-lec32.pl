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

    if(!checkusage("Hello", 7)){
        usage();
    }

}

sub checkusage{
    my $greeting = shift @_;
    my $number = 7;

    # my ($greeting, $number) = @_;
    
    print "$greeting number $number\n";
    return 1;
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