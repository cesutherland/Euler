my @prime;
$prime[0] = 2;
my $i = 1;
my $final = 0;
BIG: while ($final == 0) {
    $i+=2;
    if (&isPrime($i)) {
        push (@prime, $i);
        next;
	}
    foreach my $j (@prime) {
        my $k = sqrt (($i - $j)/2);
        if ($k !~ /\d\.\d/) {
            next BIG;
        }
    }
    $final = $i;
}

print "$final\n";
       

sub isPrime {
	my $sqt = sqrt $_[0];
    foreach my $smell (@prime) {
        return 0 if ( $_[0] % $smell == 0 );
        return 1 if ( $smell > $sqt);
    }
}
