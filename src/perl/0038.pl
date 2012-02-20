
my $final = 0;

foreach my $j (1..9999) {
    next if $j =~ /0|(\d)\d*\1/;
    my $k = &multi($j);
    $final = $k if $k > $final;
}

print "$final\n";

sub multi {
    my $num = shift;
    my $n = $num;
    my $m = 2;
    while(length($num)<9) {
        $b = $n * $m;
        return 0 if $b =~ /[0$num]|(\d)\d*\1/;
        $num = $num.$b;
        $m++;
    }
    return 0 if length($num)>9;
    return $num;
}

