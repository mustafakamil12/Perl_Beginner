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

    if(!checkusage(\%opts)){
        usage();
    }

=pod
    perl sec4-lec33.pl -a -f test.xml -c

    a => 1
    c => 1
    f => test.xml 
=cut

    my $opts_ref = \%opts;      # This reference is in the main scope

    # Use hash directly
    print $opts{"f"} . "\n";

    # Use reference to hash
    print $opts_ref->{"f"} . "\n";
}

sub checkusage{
    # my $greeting = shift @_;
    # my $number = 7;

    # my ($greeting, $number) = @_;
    
    # print "$greeting number $number\n";
    # my %opts = @_;
    # print Dumper(%opts);

    # print $opts{"f"};

    my $opts_ref = shift;       # This reference is in the checkusage scope

    print $opts_ref->{"f"} . "\n";
    
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