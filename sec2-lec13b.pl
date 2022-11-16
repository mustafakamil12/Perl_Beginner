use strict;
use warnings;

$|=1;

sub main{
    my $input = '/Users/mustafaalogaidi/Desktop/Perl_Beginner/test.csv';

    unless(open(INPUT, $input)){
        die "file: $input unable to be opened";
    }
    
    <INPUT>;

    while(<INPUT>){
        print $_ ;
    }
}

main();