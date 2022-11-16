use strict;
use warnings;

$|=1;

sub main{
    my %foods = (
        "mice" => "cheese",
        "dogs" => "meat",
        "birds" => "seeds",
    );

    my ($one, $two, $three) = (13, 21, 38);

    print "The value of \$two is $two \n";

    while(my ($key, $value) = each %foods){
        print "$key: $value\n";
    }

    foreach my $key(sort keys %foods){
        my $value = $foods{$key};
        print "$key = $value\n"
    }
}

main();