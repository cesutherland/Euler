#!/usr/bin/perl
open(FOO, "<0011.in");
my @smell = <FOO>;
close FOO;
my ($c1, $c2) = (0,0);
my @data;
foreach (@smell) {
	$c2 = 0;
	foreach (split (/ /,$_)) {
		/^(\d*)\D?$/;
		$data[$c1][$c2] = $1;
		$c2++;
	}
	$c1++;
}
my @m = ([0,0,1,0,2,0,3,0],[0,0,1,1,2,2,3,3],[0,0,0,1,0,2,0,3],[0,0,-1,1,-2,2,-3,3]);
my $max = 0;
my $index;
foreach my $line (0..19) {
	foreach my $col (0..19) {
		foreach my $n (0..3) {
			next if ($col + $m[$n][7] > 19) || ($line + $m[$n][6] > 19);
			next if $line + $m[$n][6] < 0;
			$mult = $data[$line+$m[$n][0]][$col+$m[$n][1]]*$data[$line+$m[$n][2]][$col+$m[$n][3]]*$data[$line+$m[$n][4]][$col+$m[$n][5]]*$data[$line+$m[$n][6]][$col+$m[$n][7]];
			$max = $mult if $mult > $max;
		}
	}
}
print "$max\n";