

my $test = 40756;
my ($currj,$currk,$currl);

my ($j, $k, $l,$match) = (0,0,0,0);

while ($match == 0) {
    while ($currj <= $test) {
        $currj = &hex($j);
        $j++;
    }
    $test = $currj;
    while ($currk < $test) {
        $currk = &pent($k);
        $k++;
    }  
    while ($currl < $test) {
        $currl = &hex($l);
        $l++;
    }  
    if ($currj == $currk and $currj == $currl) {
        $match = 1;
    }
}

print "$currj\n";


sub hex {
    my $n = shift;
    return ($n*(2*$n - 1));
}

sub pent {
    my $n = shift;
    return ($n*(3*$n - 1)/2);
}

sub tri {
    my $n = shift;
    return ($n*($n + 1)/2);
}

