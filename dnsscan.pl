#!/usr/bin/perl

# Simple "DNS Scanner" for obtaining and printing the reverse DNS results
# for a /24 network. This is currently a very rudimentary script, and can
# probably use some improvement.
#
# Usage: perl dnsscan.pl X.Y.Z
#  example: perl dnsscan.pl 192.168.1
#  (This would scan the 192.168,1.0/24 network.)
#

use Socket;
$i=0;
$sub=$ARGV[0];
while($i<256) {
  $ip = inet_aton("$sub.$i");
  $host = gethostbyaddr($ip,AF_INET);
  print "$sub.$i: $host\n";
  $i++;
}
