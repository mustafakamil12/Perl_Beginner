use strict;
use warnings;

use LWP::Simple; # using with http
use HTTP::Tiny;  # using with https

$| = 1;

sub main{
    my $content = HTTP::Tiny->new->get("https://www.caveofprogramming.com/");
    
    unless(defined($content)){
        die "Unreachable url\n";
    }
    # print $content->{content};
    my $pageContent = $content->{content};

    my @classes = $pageContent =~ m|class='([^"']*?)'|ig;

    if(@classes == 0){
        print "No match\n";
    }
    else{
        foreach my $class(@classes){
            print "$class\n";
        }
    }
}

main();