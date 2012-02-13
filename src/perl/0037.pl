
my $num = 2;
my (%prime,@prime);
$prime{2} = 1;
$prime[0] = 2;
my $count;
my $sum;

BIG: while ($count < 11) {
    $num++;
    if (&isPrime($num)) {
        push(@prime,$num);
        $prime{$num}++;
    } else {
        next;
    }
    next if $num =~ /^\d$/; 
    $butt = $num;
    while ($butt =~ /(\d+)\d$/) {
        next BIG if not $prime{$1};
        $butt = $1;
    }
    $butt = $num;
    while ($butt =~ /\d(\d+$)/) {
        next BIG if not $prime{$1};
        $butt = $1;
    }
    $count++;
    $sum += $num;
}

print "$sum\n";





sub isPrime {
	my $sqt = sqrt $_[0];
    foreach my $smell (@prime) {
        return 0 if ( $_[0] % $smell == 0 );
        return 1 if ( $smell > $sqt);
    }
}
