
my $str;
my $n = 1;
my $test = 1;
my $final = 1;
my $length = 1000010;
my $adj = 0;
my $snip = 20000;

while (length($str) < ($length - $adj)) {
    $str .= $n;
    $n++;
    if (length($str) > $snip) {
        $adj += length($str);
        $str = "";
    }
    if ((length($str)+$adj) > $test) {
        my $j = $test - 1 - $adj;
        $str =~ /\d{$j}(\d)/;
        $final *= $1;
        $test *= 10;
    }
}


print "$final\n";

