
my @limit;
$limit[0]=1;

foreach (1..9) {
    push(@limit,(&factorial($_)));
}

my $n;
my $final = 0;
my $count = 0;
my $j = 2;

while (1) {
    $j++;
    last if $j > (length($j)*$limit[9]);
    my $sum = 0;
    @num = split(//,$j);
    foreach my $l (@num) {
        $sum += $limit[$l];
    }
    if ($sum == $j) {
        $final += $sum;
    }
}

print "$final\n";

sub factorial {
    $x = shift;
    return $x*$limit[$x-1];
}

