#!/usr/bin/perl
my $palim = 998;
my $match, $bignum, $div;
while (not $match) {
	$bignum = $palim . reverse($palim);
	$div = int($bignum / 100);
	$div = 999 if $div > 999;
	foreach (my $check = $div; $check >= 100; $check --) {
		if (($bignum % $check == 0) and ($bignum / $check >= 100 and $bignum / $check <= 999)) {
			$match = 1;
			print "$bignum\n";
			last;
		}
	}
	$palim -= 1;
}