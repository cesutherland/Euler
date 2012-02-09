#!/usr/bin/perl -ws
open(FOO, "<0013.in");
my @smell = <FOO>;
close FOO;
my @nu;
my $sum;
foreach my $j (0..$#smell) {
	$sum += $smell[$j];
}
while ($sum > 9999999999) {
	$sum /= 10;
}
$sum =~ /^(\d{10}).*?/;
print "$1\n";
