#!/usr/bin/perl
my @doy = (31,28,31,30,31,30,31,31,30,31,30,31);
my $start = 1;
my $days = 0;
foreach my $year (1900..2000) {
	$doy[1] = 29 if $year % 4 == 0 and $year != 1900;
	foreach my $mo (@doy) {
		$start += $mo;
		while ($start >= 7) {
			$start -= 7;
		}
		$days ++ if $start == 0 and $year > 1900;
	}
	$doy[1] = 28;
}

print "$days\n";
