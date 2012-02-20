
my @prime;
$prime[0] = 2;


foreach (my $j = 3; $j<9999 ; $j+=2) {
    if (&isPrime($j)) {
        push (@prime, $j);
    }
}

foreach (my $k=0;$k<$#prime;$k++) {
    my @match;
    next if length($prime[$k])<4;
    HUTT: foreach (my $l=($k+1);$l<=$#prime;$l++) {
        my %ch;
        foreach (split(//,$prime[$k])) {
            $ch{$_}++;
        }
        $butt = $prime[$l];
        foreach my $j (keys %ch) {
            foreach (1..$ch{$j}) {
                next HUTT if $butt !~ /(.*)[$j](.*)/;
                $butt = $1.$2;
            }
        }
        push(@match,$prime[$l]);
    }
    next if @match < 2;
    foreach (my $o=0;$o<=$#match;$o++) {
        my $q = $match[$o] - $prime[$k];
        my $w = 0;
        foreach (my $p=($o+1);$p<=$#match;$p++) {
            $w = $match[$p] - $match[$o];
            last if $w > $q;
            print "$prime[$k]$match[$o]$match[$p]\n" if $w == $q;
        }

    }

}

sub isPrime {
	my $sqt = sqrt $_[0];
    foreach my $smell (@prime) {
        return 0 if ( $_[0] % $smell == 0 );
        return 1 if ( $smell > $sqt);
    }
}

