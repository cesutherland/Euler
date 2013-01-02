
use Number::Fraction;

my $test = 1000000;
my $ret = (0);
my $fract = (3/7);
foreach (my $j = $test; $j>=1; $j--) {
    next if $j % 7 == 0;
    my $k = int($j*$fract);
    my $m = Number::Fraction->new($k,$j);
    $ret = $m if $m > $ret;
}

$ret =~ /^(\d*)\//;

print "$1\n";

