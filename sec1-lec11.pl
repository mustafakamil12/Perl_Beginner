use strict;
use warnings;

$|=1;

sub main{
        # * zero or more of the preceding character; e.g.
        # + one or more of the preceding, as many as possible
        # *? zero or more or the precding charcter, as few as possible.
        # +? one or more or the precding charcter, as few as possible.
        # {5} five of the precdeing
        # {3,5} at least three and at most 6
        # {3,} at least three

        my $text = 'DE75883';
        my $text1 = 'DE$75883';

        if($text =~ /(DE\d)/){
            print "1. Matched: '$1'\n"
        }

        if($text =~ /(DE.....)/){
            print "2. Matched: '$1'\n"
        }

        if($text =~ /(DE\d\d\d\d\d)/){
            print "3. Matched: '$1'\n"
        }

        if($text =~ /(DE\d{5})/){
            print "4. Matched: '$1'\n"
        }

        if($text =~ /(DE\d{3,6})/){
            print "5. Matched: '$1'\n"
        }

        if($text =~ /(DE\d{3,})/){
            print "6. Matched: '$1'\n"
        }

        if($text =~ /(DE\d{8,})/){
            print "7. Matched: '$1'\n"
        }

        if($text1 =~ /(DE\d)/){
            print "8. Matched: '$1'\n"
        }


}

main();