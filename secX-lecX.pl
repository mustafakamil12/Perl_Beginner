use strict;
use warnings;
use Data::Dumper;
use Getopt::Long;

$|=1;

sub main{
    my %opts = (
        server => undef,
        userid => undef,
        verbose => undef,
        s => undef,
    );

    GetOptions (\%opts,
    "csi=s",
    "server=s",
    "userid=s",
    "verbose",
    "s=s");

    print "$opts{server}\n";
    print "$opts{userid}\n";
    print "$opts{verbose}\n";
    print "$opts{s}\n";
}

main();