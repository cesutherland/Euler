
use bigint;
my $max = 0;

foreach my $j (1..99) {
    my $ho = $j+0;
    foreach my $k (1..99) {
        my $hi = $k+0;
        my $smell = $ho ** $hi;
        my $butt = &math($smell);
        $max = $butt if $butt > $max;
    }
}

print "$max\n";

sub math {
    my $p = shift;
    my $sum;
    foreach my $m (split(//,$p)) {
        $sum+=$m;
    }
    return $sum;
}

