my %prime;
my @prime;
@prime[0]=2;
$prime{2}++;
my $test = 1000000;
my $count = 0;

foreach (my $j = 3;$j<=$test;$j+=2) {
    if (&isPrime($j)) {
        push(@prime,$j);
        $prime{$j}++;
    }
}

JABBA: foreach my $j (@prime) {
    my $m = 0;
    while ($m < (length($j)-1)) {
        next JABBA if $j =~ /[520]/;
        $m++;
        $j =~ s/(^\d)(\d*?$)/$2$1/;
        next JABBA if not($prime{$j});
    }
    $count++;
}

print "$count\n";

sub isPrime {
	my $sqt = sqrt $_[0];
    foreach my $smell (@prime) {
        return 0 if ( $_[0] % $smell == 0 );
        return 1 if ( $smell > $sqt);
    }
}

