#!/usr/bin/perl
my @prime;
$prime[0] = 2;
my $num = 600851475143;
my $e = sqrt $num;
foreach ($i=3; $i<$e; $i+=2) {
    if (&isPrime($i)) {
        push (@prime, $i);
		}
	}
my $match = 0;
my $start = $#prime;
while ($match == 0) {
	$match = 1 and print "$prime[$start]\n" if $num % $prime[$start] == 0;
	$start -= 1;
}

sub isPrime {
	my $sqt = sqrt $_[0];
    foreach my $smell (@prime) {
        return 0 if ( $_[0] % $smell == 0 );
        return 1 if ( $smell > $sqt);
    }
}