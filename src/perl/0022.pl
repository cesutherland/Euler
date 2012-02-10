#!/usr/bin/perl 

open(FOO, "<names.txt");
my @names = split (/,/,<FOO>);
close FOO;

for (@names) {
	s/"//g;
}

@names = sort @names;
my %let;

@let{A..Z} = (1..26);

my $total;
for my $k (0..$#names) {
	$total += (&words($names[$k])*($k+1))
}

print "$total\n";



sub words {
	my @letters = split(//,shift);
	my $sum;
	foreach (@letters) {
		$sum += $let{$_};
	}
	return $sum;
}

