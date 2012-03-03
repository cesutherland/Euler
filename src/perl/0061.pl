
my (%num,$hum,$dd);
my @subs = ("tri","sq","pent","hex","hept","oct");

foreach my $j (0..$#subs) {
    my $k = 1;
    my $l = $subs[$j];
    while (1) {
        my $x = &$l($k);
        last if $x > 9999;
        next if $x < 999;
        $x =~ /^(\d\d)(\d\d)$/;
        next if $2 < 10;
        push (@{$num{$j}{$1}},$2);
    } continue {
        $k++;
    }
}
my $yo;
my @ind = (1..5);
my @yoy;
my $smell;
JABBA: foreach my $j (keys %{$num{0}}) {
    $smell = $j;
    foreach my $pp (@{$num{0}{$j}}) {
        $yo = &woo($pp);
        if ($yo > 0) {
            $yo += ($j*100);
            $yo += $pp;
            $yo -= 1;
            last JABBA;
        }
    }
}

print "$yo\n";

sub woo {
    my $dig = shift;
    if ($#yoy == 4) {
        if ($dig == $smell) {
            return 1;
        } else {
            return 0;
        }
    }
    HUTT: foreach my $rank (@ind) {
        foreach (@yoy) {
            next HUTT if $rank == $_;
        }
        unshift(@yoy,$rank);
        foreach my $k (@{$num{$rank}{$dig}}) {
            my $ch = &woo($k);
            if ($ch > 0) {
                return ($ch+$k+$dig*100);
            }
        }
        shift(@yoy);
    }
    return 0;
}

sub tri {
    my $n = shift;
    return $n*($n+1)/2;
}

sub sq {
    my $n = shift;
    return $n ** 2;
}

sub pent {
    my $n = shift;
    return $n*(3*$n-1)/2;
}

sub hex {
    my $n = shift;
    return $n*(2*$n-1);
}

sub hept {
    my $n = shift;
    return $n*(5*$n-3)/2;
}

sub oct {
    my $n = shift;
    return $n*(3*$n-2);
}

