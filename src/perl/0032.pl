my @twodig;

my @threedig;
my @fourdig;
foreach my $j (1..9) {
    foreach my $k (1..9) {
        next if $j == $k;
        push (@twodig, $j.$k);
        foreach my $l (1..9) {
            next if $l == $k || $l == $j;
            push (@threedig, $j.$k.$l);
            foreach my $q (1..9) {
                next if ($q == $l || $q == $k) || $q == $j;
                push (@fourdig, $q.$l.$k.$j);
            }
        }
    }
}


my %numbers;
my %final;

foreach my $j (@twodig) {
    HUTT: foreach my $k (@threedig) {
        %numbers = map { $_ => 0} 1..9;
        $numbers{0} = 1;
        my $m = $j * $k;
        next if length($m) > 4;
        my @num = split(//,$m);
        @num = (@num,split(//,$k));
        @num = (@num,split(//,$j));
        foreach (@num) {
            next HUTT if ($numbers{$_});
            $numbers{$_} = 1;
        }
        $final{$m}++;
    }
}

foreach my $j (1..9) {
    HUTT: foreach my $k (@fourdig) {
        %numbers = map { $_ => 0} 1..9;
        $numbers{0} = 1;
        my $m = $j * $k;
        my @num = split(//,$m);
        @num = (@num,split(//,$k));
        @num = (@num,split(//,$j));
        foreach (@num) {
            next HUTT if ($numbers{$_});
            $numbers{$_} = 1;
        }
        $final{$m}++;
    }
}
my $smell;
foreach (keys %final) {
    $smell += $_;
}

print "$smell\n";

