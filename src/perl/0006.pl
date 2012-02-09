#!/usr/bin/perl
foreach (1..100) {
	$sum += $_;
	$sqsum += ($_*$_);
}
my $diff = ($sum * $sum) - $sqsum;

print "$diff\n";
