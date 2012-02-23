
use Number::Fraction;
use bigint;

my $d1 = 2;
my $n1 = 1;
my $k = 2;
my $count = 0;
for (1..999) {
    $n1 += (2*$d1);

    my $n2 = $d1 + $n1;
    my $m = Number::Fraction->new($n2,$n1);
    $m =~ /(\d*)\/(\d*)/;
    $count++ if length($1) > length($2);
    ($d1,$n1) = ($n1,$d1);
}

print "$count\n";
