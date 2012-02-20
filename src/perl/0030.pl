
$power = 5;
my (@limit,@query);
$query[0]=9;
$reg = 9;

foreach (0..9) {
    push(@limit,($_**$power));
}

foreach (reverse(1..8)) {
    $reg .= "|$_";
    push(@query,$reg);
}
push(@limit,9999999);
@query = reverse(@query);
push(@query," ");
unshift(@query,"");

my $n;
my $final = 0;
my $count;
my $j = 0;
while (1) {
    $j++;
    last if $j > (length($j)*$limit[9]);
    while ($j > $limit[$n]) {
        $n++;
    }
    my $sum = 0;
    next if $j =~ /$query[$n]/;
    @num = split(//,$j);
    foreach my $l (@num) {
        $sum += $limit[$l];
    }
    if ($sum == $j) {
        $final += $sum;
    }
}

print "$final\n";

