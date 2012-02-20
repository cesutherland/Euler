use bigint;

my %unique;

my %complete;
my $max = 100;
my $skip = ($max/2);

foreach my $j (2..$max) {
    foreach (my $k=2;$k<=$max;$k++) {
        if (($k < $skip) and ($complete{sqrt($j)})) {
            $k = $skip;
        }
        $unique{$j**$k}=1;
    }
    $complete{$j}=1;
}

my $size = scalar(keys %unique);

print "$size\n";

