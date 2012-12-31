
my $count;
use bigint;

foreach my $j (1..9) {
    my $k=1;
    while (1) {
        $j=$j+0;
        my $ho = $j**$k;
        my $hi = length($ho);
        last if length($ho) < $k;
        $count++;
        $k++;
    }
}

print "$count\n";

