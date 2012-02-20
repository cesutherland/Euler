my $butt;
use bigint;


foreach my $k (1..999) {
    my $j = $k+0;
    my $a = $j**$j;
    $a =~ /(\d{1,10}$)/;

    $butt += $1;
}
$butt =~ /(\d{10}$)/;
print "$1\n";
