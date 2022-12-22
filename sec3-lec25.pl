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

    if($pageContent =~ m'<h3 class=.+?><p>(.+?)</p>'i){   # using m to use some chars rather than // and consider it as regex.
        my $title = $1;
        print "Title: $title\n";
    }
    else{
        print "\nTitle not found\n";
    }
}



main();