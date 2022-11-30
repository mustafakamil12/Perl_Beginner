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
    while($pageContent =~ m|<\s*a\s+[^>]*href\s*=\s*['"]([^>"']+)['"][^>]*>\s*([^<>]*)\s*</|sig){
        print "$2: $1\n";
    }

}

main();