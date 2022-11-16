use strict;
use warnings;

$|=1;

sub main{
    my @files = ('/Users/mustafaalogaidi/Desktop/Python-Crash-Course/README.md',
    '/Users/mustafaalogaidi/Desktop/Python-Crash-Course/README.mdf',);
    
    foreach my $file(@files){
        if (-f $file){
            print "Found file: $file \n";
        }
        else{
            print "file: $file not found \n";
        }
    
    }
    

}

main();