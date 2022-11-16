use strict;
use warnings;

$|=1;

sub main{
    my $text = 'the code for this device is GP8765. and P.';

    if($text =~ /(\w\w\d{4})/){
        print "code is: $1\n";
    }

    if($text =~ /\sis\s(.+?)\./){
        print "code is: $1\n";
    }

    if($text =~ /is\s(\S+?)\./){
        print "code is: $1\n";
    }

    if($text =~ /is\s(\w\w\d{2,6})\./){
        print "code is: $1\n";
    }
}

main();