use Number::Fraction;

my $finaln = 1;
my $finald = 1;

foreach my $j (10..99) {
    foreach my $k (10..$j) {
        my $combo = $j . " " . $k;
        foreach my $l (1..9) {
            next if $combo !~ m/(\d$l|$l\d) (\d$l|$l\d)/;
            $o = $j;
            $o =~ s/$l//;
            next if $o == 0;
            $i = $k;
            $i =~ s/$l//;
            next if $i >= $o;
            if ($k/$j == $i/$o) {
                $finaln *= $i;
                $finald *= $o;
            }
        }
    }
}

my $dd = Number::Fraction->new($finaln,$finald);


$dd =~ /.*?\/(.*)/;

print "$1\n";
