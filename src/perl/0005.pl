#!/usr/bin/perl
my (@prime,$sol,$check);
my $add = 1;
$prime[0] = 2;
my $e = 20;
foreach ($i=3; $i<$e; $i+=2) {
    if (&isPrime($i)) {
        push (@prime, $i);
	}
}
foreach (@prime) {
	$add *= $_;
}
while (not $sol) {
	$check += $add;
	$sol = &divisor($check);
}
print "$check\n";

sub isPrime {
	my $sqt = sqrt $_[0];
	foreach my $smell (@prime) {
		return 0 if ( $_[0] % $smell == 0 );
		return 1 if ( $smell > $sqt);
    }
}
sub divisor {
	foreach (my $x = 20; $x >=11; $x--) {
		return 0 if $_[0] % $x != 0;
	}
	return 1;
}
