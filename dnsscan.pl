#!/usr/bin/perl
use Socket;
$i=0;
$sub=$ARGV[0];
while($i<256) {
  $ip = inet_aton("$sub.$i");
  $host = gethostbyaddr($ip,AF_INET);
  print "$sub.$i: $host\n";
  $i++;
}
