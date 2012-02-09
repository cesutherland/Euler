#!/usr/bin/perl
my $e = 2000000;
my (@prime,$sum);
$prime[0] = 3; 
$sum = (5);
foreach ($i=(5); $i<$e; $i+=2) {
	next if /\d5$/;
	if (&isPrime($i)) {
    		push (@prime, $i);
		$sum += $i;
		}
	}
print $sum."\n";

sub isPrime {
	my $sqt = sqrt $_[0];
    foreach my $smell (@prime) {
        return 0 if ( $_[0] % $smell == 0 );
        return 1 if ( $smell > $sqt);
    }
}
