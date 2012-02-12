
use Math::BigFloat;

$x = Math::BigFloat->new(1);
Math::BigFloat->accuracy(5000);
my $max = 0;
my $maxl = 0;
my %data;
foreach (1..1000) {
    $b = $x->copy()->bdiv($_);
    $b =~ m/0\.\d*?(\d{2,}?)\1+\d*?/;
    $max = $_ and $maxl = length($1) if length($1) > $maxl;
    
}
print "$max\n";

