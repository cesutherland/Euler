
open(FOO,"<0042.in");
my @words = split(/,/,<FOO>);
close FOO;

my $maxl;

foreach (@words) {
    s/\W//g;
    $maxl = length if length > $maxl;
}

my ($max,%trig);
($max,$trig{1},$index) = (1,1,1);
my @crap = A..Z;
my %letters = map{ $crap[$_] => ($_+1)} 0..25;
my $count = 0;

foreach my $w (@words) {
    my $sum = 0;
    for (split(//,$w)) {
        $sum += $letters{$_};
    }
    while ($max < $sum) {
        &rev();
    }
    $count++ if $trig{$sum};
}

print "$count\n";


sub trian {
    $n = shift;
    return ($n/2)*($n+1);
}

sub rev {
    $index++;
    my $j = &trian($index);
    $trig{$j}++;
    $max = $j;
}

