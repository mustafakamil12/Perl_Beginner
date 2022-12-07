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
    getopts('af:r', \%opts);

    if(!checkusage(\%opts)){
        usage();
    }

=pod
    perl sec4-lec33.pl -a -f test.xml -c

    a => 1
    r => 1
    f => test.xml 
=cut

    my $opts_ref = \%opts;      

    # Use hash directly
    print $opts{"f"} . "\n";

    # Use reference to hash
    print $opts_ref->{"f"} . "\n";
}

sub checkusage{

    my $opts = shift;       

    my $a = $opts->{"a"};
    my $r = $opts->{"r"};
    my $f = $opts->{"f"};

    # Imagin a is optional; don't really need to refer to it here at all.
    # r is mandatory: it means "run the program"
    # f is mandatory.

    unless(defined($r) and defined($f)){
        return 0;
    }
    
    unless($f =~ /\.xml$/i){
        print "Input file must have the extension .xml\n";
        return 0;
    }
    return 1;
}

sub usage{
    print <<USAGE;

usage: perl main.pl <options>
    -f <file name> specify XML file name to parse
    -a turn off error checking
    -r run the program

USAGE
    
    exit();
}

main();