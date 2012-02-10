#!/usr/bin/perl
my $test = 1000;
my $check = 2;
my @num;
my $remain = 0;
$num[0]=2;
my $i;
my @dig;
while ($check <= $test) {
	$i = 0;
	while (defined $num[$i] || $remain) {
		$num[$i] = 0 if not $num[$i];
		@dig = reverse split (//,($num[$i] * 2));
		$num[$i] = shift(@dig) + $remain;	
		$remain = 0;
		for my $j (0..$#dig) {
			$remain += $dig[$j]*(10**$j);
		}
		$i++;
	}
	$check++
}
my $sum;
foreach my $k (reverse @num) {
	$sum += $k;
}

print "$sum\n";
