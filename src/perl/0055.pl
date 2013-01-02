
use bigint;
my $j = 1;
my $count = 0;

HUTT: while ($j < 10000) {
    my $k = &pal($j);
    my $m = 1;
    while (1) {
        next HUTT if &ispal($k);
        last if $m == 50;
        $k = &pal($k);
        $m++;
    }
    $count++;
} continue {
    $j++;
}

print "$count\n";

sub pal {
    my $l = shift;
    return ($l += reverse($l));
}

sub ispal {
    my $x = shift;
    return 0 if length($x)==1;
    my $n = int((length($x)/2));
    $x =~ /^(\d{$n})\d?(\d{$n})$/;
    return 1 if $1 == reverse($2);
    return 0;
}
