#!/usr/bin/perl
my $test = 2;
my $check = 100;
my @num;
my $remain = 0;
$num[0]=1;
my $i = 0;
my (@dig,@rem);
while ($check >= $test) {
	$i = 0;
	while (defined $num[$i] || $remain) {
		$num[$i] = 0 if not defined $num[$i];
		$mu = ($num[$i] * $check);
		@dig = reverse split (//,$mu);
		@rem = reverse split (//,$remain);
		$num[$i] = shift(@dig)+shift(@rem);
		if ($num[$i] > 9) {
			$num[$i] =~ /(\d*?)(\d)$/;
			$num[$i] = $2;
			$rem[0] += $1;
		}
		$remain = 0;
		for my $j (0..$#dig) {
			$remain += $dig[$j]*(10**$j);
		}
		for my $l (0..$#rem) {
			$remain += $rem[$l]*(10**$l);
		}
		$i++;
	}
	$check--;
}
my $sum;
foreach my $k (reverse @num) {
	$sum += $k;
}
print "$sum\n";
