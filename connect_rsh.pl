#!/usr/bin/perl


my $cmd;
my $output;
for (my $i=0; $i <= 50; $i++) {

#       my $pid = fork();
#       die if not defined $pid;
#       if (not $pid){



        #print "In to fork -  1\n";
        $cmd = 'rsh -l admin,admin 192.168.0.20 sql insert into vlanStaticCfg set vid = 10 overwrite';
        $output = system($cmd);
        print "fork -1 output $output \n";

#        exit;
#       }

        #print "In to fork -  2 \n";
       # $cmd = 'rsh -l admin,admin 192.168.0.22 sql update vlanportcfg set type = Trunk where port = 5';
       # system($cmd);
#       $output = system($cmd);
#        print "fork -2 output $output \n";

#       my $finished = wait();


        print "End of loop $i\n\n\n";
}
