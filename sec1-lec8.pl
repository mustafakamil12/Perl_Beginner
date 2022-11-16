use strict;
use warnings;

$|=1;

sub main{
    my $input = '/Users/mustafaalogaidi/Desktop/Perl_Beginner/fox.txt';

    open(INPUT, $input) or die "File: $input not found";

    while(my $line = <INPUT>){

        # * matches zero or more of the preceding character; e.g.
        # d* matches zero more d's 7* zero or more 7's, etc.
        # .* matches zero or more of any character, as many as possible.
        # .*? matches zero or more of any character, as few as poosible.
        
        if($line =~ /(s.*?n)/){
            print "'$1'\n";
        }

    }
    close(INPUT);

}

main();