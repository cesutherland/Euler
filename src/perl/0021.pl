#!/usr/bin/perl -ws
my $max = 10000;
my $sum = 0;
my $sol = 0;
my (%total);
for my $i (2..$max) {
	$sum = 0;
	for (my $g = 2;$g < $i/$g;$g++) {
		$sum += &divis($i,$g);
	}
	$sum++;
	$total{$i} = $sum;
	next if $i == $sum;
	$sol = ($sol+$sum+$i) if $total{$sum} && $total{$sum} == $i;
}
print "$sol\n";

sub divis{
	$j = $_[0];
	$k = $_[1];
	return ($k+($j/$k)) if $j % $k ==0;
	return 0;
}
