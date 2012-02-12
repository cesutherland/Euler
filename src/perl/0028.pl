
my @spiral;
my ($size,$start,$n) = (1000,1,2);
$spiral[$size / 2][$size / 2] = 1;
my @index = &corners($size / 2,$size / 2);

while ($start <= $size) {
    foreach my $j (reverse($index[5]..$index[4])) {
        $spiral[$index[0]][$j] = $n;
        $n++;
    }
    foreach my $j (reverse($index[2]..$index[1])) {
        $spiral[$j][$index[5]] = $n;
        $n++;
    }
    foreach my $j ($index[6]..$index[7]) {
        $spiral[$index[2]][$j] = $n;
        $n++;
    } 
    foreach my $j ($index[3]..$index[0]) {
        $spiral[$j][$index[7]] = $n;
        $n++;
    }
    $start += 2;
    @index = &corners($index[0],$index[7]);
}

my $sum;
my ($ix,$iy) = (0,0);

foreach (@spiral) {
    foreach (@{$_}) {
        $sum += $_ if ($ix == $iy) || ($ix + $iy == $size);
        $ix++;
    }
    $iy++;
    $ix = 0;
}
print "$sum\n";


sub corners {
    my $x = shift;
    my $y = shift;
    $x1 = $x + 1;
    $x3 = $x;
    $x4 = $x - $start;
    $x7 = $x4 + 1;
    $y1 = $y;
    $y2 = $y - ($start);
    $y5 = $y2 + 1;
    $y6 = $y + 1;
    return ($x1,$x3,$x4,$x7,$y1,$y2,$y5,$y6);
}


