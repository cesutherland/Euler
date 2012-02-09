#!/usr/bin/perl
my $sum = 0;
foreach (my $x = 3; $x < 1000; $x +=1) {
	if ($x % 3 == 0 || $x % 5 == 0) {
		$sum += $x;
	}
}
print "$sum\n";