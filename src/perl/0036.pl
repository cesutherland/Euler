#!/usr/bin/perl

my $num = 1;
my $sum = 0;

sub bits {
	my $tempb = unpack("B32",pack("N",shift));
	$tempb =~ s/0*(\d*?$)/$1/;
	return $tempb;
}

while ($num < 1000000) {
	next if $num != scalar reverse($num);
	next if &bits ($num) != scalar reverse(&bits ($num));
	$sum += $num;
} continue {

	$num++;
}

print "$sum\n";

