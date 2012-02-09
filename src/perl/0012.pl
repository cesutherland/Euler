#!/usr/bin/perl
my ($check,$sum);
$num = 1;
while (not $check) {
	$sum += $num;
	$check = &divisors($sum);
	print "$sum\n" if $check;
	$num ++;
}

sub divisors {
	my $count = 0;
	my $comp = shift;
	my $max = $comp;
	foreach my $x (1..($comp/2)) {
		last if $x > $max;
		$count += 2 and $max = $comp / $x if $comp % $x ==0;
	}
	return 1 if $count >= 500;
	return 0;
}