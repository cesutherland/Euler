#!/usr/bin/perl -ws
my ($check,$dum,@abun);
$num = 1;
my $test = 28123;

while ($num < $test) {
		push(@abun,$num) if &divisors($num);
		$num++;
}

my %smell;

foreach my $j (@abun) {
		foreach my $k (@abun) {
				last if ($j + $k) > $test;
				$smell{$j + $k} = 1;
		}
}
my $sum;
foreach (1..$test) {
		$sum += $_ if not $smell{$_};
}


print "$sum\n";


sub divisors {
	my $sum = 0;
	my $comp = shift;
	my $max = $comp;
	my $x = 2;
	while ($x < $max) {
		if ($comp % $x == 0) {
			$sum += $x; 
			$max = $comp / $x;
			$sum += ($max) if $max != $x;
		}
		$x++;
	}
	return 1 if $sum > $comp;
	return 0;
}
