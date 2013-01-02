
my $n = 0;
my %pents;
my %rpent;

HUTT: while (1) {
    &pent;
    foreach (my $k=($n-1);$k>0;$k--) {
        my $subt = ($pents{$n} - $pents{$k});
        next if not($rpent{$subt});
        my $sum = $pents{$k} + $pents{$n};
        next if &ispent($sum);
        print "$subt\n";
        last HUTT;
    }
}

sub ispent {
    my $s = shift;
    my $smell = (sqrt(24*$s+1)+1)/6;
    return 1 if $smell =~ /\./;
    return 0;
}

sub pent {
    $n++;
    my $pp = ($n*(3*$n-1)/2);
    $rpent{$pp}++;
    $pents{$n} = $pp;
}

