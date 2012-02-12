
my @num = (0..9);
my $permu = 1;
foreach (2..10) {
    $permu *= $_;
}

my $test = 999999;
my $final;
my $loc;
while (length($final)<10) {
    $permu = int($permu / (10 - length($final)));
    $loc = int($test / $permu);
    $final .= splice(@num,$loc,1);
    $test = $test - ($loc*$permu);
}

print "$final\n";
