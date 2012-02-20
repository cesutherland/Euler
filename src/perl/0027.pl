#!/usr/bin/perl
my @prime;
$prime[0] = 2;
my $num = 100000;
foreach ($i=3; $i<$num; $i+=2) {
    if (&isPrime($i)) {
        push (@prime, $i);
	}
}

my ($max, $nmax) = (0,0);
my $n = 0;
foreach my $j (@prime) {
    last if $j > 999;
    foreach my $k (-999..999) {
        while (1) {
            my $h = (($n**2) + ($k*$n) + $j);
            last if $h < 0;
            last if &isPrime($h) == 0;
            $n++;
        }
        if ($n > $nmax) {
            $nmax = $n;
            $max = (($j)*($k));
        }
        $n = 0;
    }
}

print "$max\n";

sub isPrime {
    my $sqt = sqrt $_[0];
    foreach my $smell (@prime) {
        return 0 if ( $_[0] % $smell == 0 );
        return 1 if ( $smell > $sqt);
    }
}
