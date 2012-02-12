open(FOO,"<0017.in");
my %num;
while (<FOO>) {
		/(\d*?),(\d*)/;
		$num{$1} = $2;
}
close FOO;
my $sum = 0;
foreach my $c (1..999) {
		$sum += &let($c);
}
$sum += 11;
print "$sum\n";

sub let {
		my $a = shift;
		my $sums;
		return $num{$a} if $num{$a};
		my @digits = split (//,reverse($a));
		if ($digits[1] == 1) {
			$dig = $digits[1].$digits[0];
			$sums += $num{$dig};
			if (defined($digits[2])) {
				$sums += 3 if $sums > 0;
				$sums += $num{$digits[2]}+7;
			} 
	} else {
			$sums += $num{$digits[0]};
			$sums += $num{$digits[1]*10};
			if (defined($digits[2])) {
				$sums += 3 if $sums > 0;
				$sums += $num{$digits[2]}+7;
		}
	}
	return $sums;
}

