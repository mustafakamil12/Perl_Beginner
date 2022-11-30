use strict;
use warnings;

$| = 1;

sub main{
    my $content = "The 39 steps - a GREAT book - Colours_15 ==%== ABBCCBBCCABCA";

    # if($content =~ /(\d+)/){          # digit or more
    # if($content =~ /([0-9]+)/){       # digit or more
    # if($content =~ /([A-Z]{2,})/){    # 2 capital letters or more
    # if($content =~ /(C[A-Za-z_0-9]{2,})/){ # 2 or more upper, lower case, underscore and form 0 to 9
    # if($content =~ /([\=\%]{2,})/){   # match ==%==
    # if($content =~ /([ABC]{3,})/){  # match ABBCCBBCCABCA
    if($content =~ /([^0-9T\s]{5,})/){ # match any 5 chars not from 0-9 or include letter T or space
        print $1 . "\n";
    }
    else{
        print "No match\n";
    }

}

main();