use strict;
use warnings;

$|=1;

sub main{
    my $input = './message.txt';

    open(INPUT,$input) or die "Unable to open $input\n";
    while(my $line = <INPUT>){
        if($line =~ /(l+)/){
            print $1 . "\n";
        }
    }
    close(INPUT);
}

main();