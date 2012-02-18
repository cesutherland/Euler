
my @prime;
$prime[0] = 2;
my $num = 1000000;
my $e = $num;
foreach ($i=3; $i<$e; $i+=2) {
    if (&isPrime($i)) {
        push (@prime, $i);
	}
}
my $tot = 0;
my $max = 0;
my $maxl = 0;


foreach my $j (0..$#prime) {
    my $k = $j;
    while ($tot < 1000000 && $prime[$k])  {
        $tot += $prime[$k];
        $k++;
        if (&isPrime($tot)){
            $max = $tot and $maxl = ($k - $j)if ($k - $j) > $maxl and $tot < 1000000;
        }
    }
    $tot = 0;
}

print "$max\n";


sub isPrime {
	my $sqt = sqrt $_[0];
    foreach my $smell (@prime) {
        return 0 if ( $_[0] % $smell == 0 );
        return 1 if ( $smell > $sqt);
    }
}
