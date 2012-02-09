#!/usr/bin/perl
my @prime;
$prime[0] = 2;
my $i = 3;
while ($#prime < 10000) {
	if (&isPrime($i)) {
		push (@prime, $i);
		}
	$i += 2;
}
print "$prime[-1]\n";

sub isPrime {
	my $sqt = sqrt $_[0];
    foreach my $smell (@prime) {
        return 0 if ( $_[0] % $smell == 0 );
        return 1 if ( $smell > $sqt);
    }
}
