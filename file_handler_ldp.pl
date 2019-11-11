#!/usr/bin/perl
use strict;
use warnings;

my $t = 257;
my $yz = 657;
my $x = 1;


my $filename = 'report.txt';
open(my $fh, '>', $filename) or die "Could not open file '$filename' $!";



for (my $x=1; $x <= 255; $x++) {

my $xml_ldp_table = "<node node-label=\"New Node$t\" foreign-id=\"14906311274$yz\" building=\"fisrtSeries\">
        <interface ip-addr=\"192.168.20.$x\" status=\"1\" snmp-primary=\"P\"/>
      </node>";


print $xml_ldp_table;

print $fh "$xml_ldp_table\n";

$t++;
$yz++;

}

close $fh;
print "done\n";
