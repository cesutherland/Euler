#!/usr/bin/perl
my $maxx = 20;
my @graph;

foreach my $j (1..$maxx) {
	$graph[0][$j] = 1;
	$graph[$j][0] = 1;
	}
foreach (my $yd = 1;$yd <= $maxx;$yd++) {
	foreach (my $xd = 1;$xd <= $maxx;$xd++) {
		$graph[$xd][$yd] = $graph[$xd-1][$yd]+$graph[$xd][$yd-1];
	}
}

print "$graph[$maxx][$maxx]\n";
