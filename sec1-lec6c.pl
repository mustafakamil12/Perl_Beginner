use strict;
use warnings;

$|=1;

sub main{
    my $input = './fox.txt';
    open(INPUT,$input) or die "Unable to open $input file \n";
    my $output = './output.txt';
    open(OUTPUT,'>'.$output) or die "unable to open $output file \n";
    while (my $line = <INPUT>){
        if($line =~ /\bstart\b/ig){
            print OUTPUT $line;
        }    
    }
    close(INPUT);
    close(OUTPUT);
}

main();