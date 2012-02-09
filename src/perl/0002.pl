#!/usr/bin/perl
my @fibo = (1,2);
my $curr = 2;
my $sum = 2;
while ($fibo[-1]+$fibo[-2] < 4000000) {
	$fibo[$curr] = $fibo[$curr-1]+$fibo[$curr-2];
	$sum += $fibo[$curr] if $fibo[$curr] % 2 ==0;
	$curr += 1;
	}
print "$sum\n";