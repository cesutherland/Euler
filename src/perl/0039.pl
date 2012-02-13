
my $test = 1000;
%totals;
foreach my $a (1..($test/3)) {
    foreach my $b ($a..$test) {
        my $check = sqrt($a**2 + $b**2);
        last if ($a + $b + $check) > $test;
        if ($check !~ /\./) {
            $totals{$a+$b+$check}++;
        }
    }
}

my @sorted = sort {$totals{$a} <=> $totals{$b}} keys %totals;

print "$sorted[-1]\n";


