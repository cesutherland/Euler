
use Number::Fraction;
use bigint;
my @smelly;
my $k = 1;
my $ll = 98;
while ($#smelly < $ll) {
    push (@smelly,1);
    push (@smelly,2*$k);
    push (@smelly,1);
    $k++;
}

while ($#smelly > $ll) {
    pop(@smelly);
}

my $d1 = pop(@smelly);
my $n1 = 1;

foreach my $q (reverse @smelly) {
    $n1 += ($q*$d1);
    ($d1,$n1) = ($n1,$d1);
}

$n1 += (2*$d1);
my $sum;

foreach (split(//,$n1)) {
    $sum += $_;
}

print "$sum\n";
