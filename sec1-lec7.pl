use strict;
use warnings;

$|=1;

sub main{
    my $text1 = 'I have been in the library on May';
    # print $text1 . "\n";

    if($text1 =~ /I..a../ ){
        print "$text1\n";
    }
}

main();