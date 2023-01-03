use strict;
use warnings;
use Data::Dumper;
use Getopt::Long;

$|=1;

=pod
    Below is how to use arg parser:
    $x = GetOptions( option_description);

    Option_name: this is used for indicating that the option is present and will set it to 1.
    Option_name!: this indicates that the negation declaration is allowed such as –option_name and if no name then it will be set to 0.
    Option_name+: incrementing of the variable for each occurrence of this option
    Option_name=s: this is used to indicate that option requires string value only
=cut

sub help{
    print "Hello There\n";
    print STDERR "Usage of this element is not accepted\n";
}

sub main{
    my %opts = (
        server => undef,
        userid => undef,
        verbose => undef,
        s => undef,
        vcpw => undef
    );

    GetOptions (\%opts,
    "csi=s",
    "server=s",
    "userid=s",
    "verbose",
    "s=s",
    "vcpw=s");

    my $opt_vcpw = $opts{vcpw} || "vcpw.txt";
    my $opt_s = $opts{s};
    my $suffix = "." . $opt_s;

    print "$opts{server}\n";
    print "$opts{userid}\n";
    print "$opts{verbose}\n";
    print "$opts{s}\n";
    print "$opt_vcpw\n";
    print "$suffix\n";
    
    my %roled_hash;
    my $exLine = 'Admin,Privileged ReadWrite: are allowed to modify object attributes where the role is assigned within the vCenter -1 SOD1';
    my @elements = split /,/, $exLine;
    print Dumper(@elements);
    if ($elements[0] ne ''){
        $roled_hash{ $elements[0]} = $elements[1];
    }

    foreach my $key(keys %roled_hash){
        my $value = $roled_hash{$key};
        print "$key => $value";
    }
    
}

main();
help();

# perl secX-lecX.pl -server s1 -userid id2 -verbose v3 