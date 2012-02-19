my @prime = (1,2,3,5,7,11,13,17);
my $max = 0;
my $permu = 1;
foreach (2..10) {
    $permu *= $_;
}

JABBA: foreach my $j (0..($permu-1)) {
    my $l = &panda($j);
    my $dex = $#prime;
    foreach my $p (reverse(($l =~ /(?=(\d\d\d))/g))) {
        last if $dex == 0;
        next JABBA if &smell($p,$dex);
    } continue {
        $dex--;
    }
    $max += $l;
}

print "$max\n";


sub smell {
    $k = shift;
    $h = shift;
    return 0 if $k % $prime[$h] == 0;
    return 1;
}

sub panda {
    my $final = "";
    my @num = (0..9);
    $smell = shift;
    $perm = $permu;
    while (length($final)<10) {
        $perm = int($perm / (10 - length($final)));
        $loc = int($smell / $perm);
        $final .= splice(@num,$loc,1);
        $smell = $smell - ($loc*$perm);
    }
    return $final;
}

