use strict;
use warnings;

use LWP::Simple; # using with http
use HTTP::Tiny;  # using with https

$|=1;

sub main{
    
    my $exCont = '<a href="http://www.bbc.uk.co">BBC News</a>';
    my $content = HTTP::Tiny->new->get("https://www.caveofprogramming.com/");
    
    unless(defined($content)){
        die "Unreachable url\n";
    }
    # print $content->{content};
    
    my $pageContent = $content->{content};
    while($exCont =~ m|<\s*a\s+[^>]*href\s*=\s*['"]([^>"']+)['"]>\s*([^<>]*)\s*<\/|sig){
        print "$2: $1\n";
    }

}

main();