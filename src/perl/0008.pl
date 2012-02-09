#!/usr/bin/perl
open(FOO , "<0008.in");
my @num;
while (<FOO>) {
	chomp;
	@num = (@num,split(//,$_));
}
close FOO;
my $max = 0;
foreach ($x = 0;$x<=($#num - 4);$x++) {
	my $check = 1;
	foreach (0..4) {
		$check *= $num[$x+$_];
}
	$max = $check if $check > $max;
}

print "$max\n"; 
