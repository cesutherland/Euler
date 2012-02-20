my @data;
my $n=0;
open(FOO,"<0081.in");
while(<FOO>) {
    chomp;
    @{$data[$n]} = split(/,/,$_);
    $n++;
}
close FOO;

my $limit = ($#data-1);

foreach my $j (reverse(0..$limit)) {
    $data[$j][$#data]+=$data[$j+1][$#data];
    $data[$#data][$j]+=$data[$#data][$j+1];
}

foreach my $j (reverse(0..$limit)) {
    foreach my $k (reverse(0..$limit)) {
        if ($data[$j+1][$k] > $data[$j][$k+1]) {
            $data[$j][$k]+=$data[$j][$k+1];
        } else {
            $data[$j][$k]+=$data[$j+1][$k];
        }
    }
}

print "$data[0][0]\n";

