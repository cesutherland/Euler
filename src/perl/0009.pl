#!/usr/bin/perl
my ($a,$b,$c);
foreach ($b = 499; $b >= 2; $b--) {
	foreach ($a = 1; $a < $b; $a++) {
		$c = (1000 - $a - $b);
		last if $c <= $b;
		$match = 1 and last if ($a*$a + $b*$b == $c*$c);
	}
	print $a*$b*$c."\n" and last if $match ==1;
}