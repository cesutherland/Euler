
my $final = 0;
my $j = 1;
HUTT: while ($final == 0) {
    my @match = map{ $_*$j } 2..6;
    next if length($j) != length($match[4]);
    my %ch;
    foreach (split(//,$j)) {
        $ch{$_}++;
    }
    foreach my $l (keys %ch) {
        foreach my $butt (@match) {
            next HUTT if $butt !~ /(.*)[$l](.*)/;
        }
    }
    $final = $j;

} continue {
    $j++;
}

print "$final\n";


