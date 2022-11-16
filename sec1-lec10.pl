use strict;
use warnings;

$|=1;

sub main{

    # \d single digit
    # \s single space
    # \S single non-space
    # \w single alphanumeric

    my $text = 'I am 117 years old tomorrow';
    my $text1 = '.Iam117years_old_tomorrow.';

    if($text =~ /(\d*)/){
        print "Matched: '$1'\n";
    }

    if($text =~ /(\d+)/){
        print "Matched: '$1'\n";
    }

    if($text =~ /(am\s\d+)/){
        print "Matched: '$1'\n";
    }
    
    if($text =~ /(y\S*)/){
        print "Matched: '$1'\n";
    }
    
    if($text1 =~ /(\w+)/){
        print "Matched: '$1'\n";
    }

}

main();