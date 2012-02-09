#!/usr/bin/perl -ws
my @index;
my %data;
foreach (0..35) {
	$data{2**$_} = $_ + 1;
}

foreach my $n (1..999999) {
	next if $data{$n};
	while (1) {
		push(@index,$n);
		$n = &maths($n);
		last if $data{$n};
	}
	@index = reverse @index;
	my $start = ($data{$n}+1);
	while (@index) {
		$data{shift(@index)} = $start;
		$start++;
	}
}
my @sorted = sort {$data{$b} <=> $data{$a}} keys %data;
foreach (@sorted) {
	next if $_ > 999999;
	print "$_\n";
	last;
}


sub maths {
	$j = shift;
	return ($j/2) if $j % 2 == 0;
	return ($j*3)+1;
}
