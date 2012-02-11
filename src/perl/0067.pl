open (FOO, "<0067.in");
my $x = 0;
my @data;
while (<FOO>) {
		@{$data[$x]} = split(/ /);
		$x++;
}
@data = reverse(@data);

foreach my $j (1..$#data) {
		foreach my $k (0..$#{$data[$j]}){
				if ($data[$j-1][$k]>$data[$j-1][$k+1]) {
						$data[$j][$k] += $data[$j-1][$k];
				} else {
						$data[$j][$k] += $data[$j-1][$k+1];
				}
		}
}

print "$data[-1][0]\n";

