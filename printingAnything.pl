use Data::Dumper;
$Data::Dumper::Maxdepth=2;
my $r = [1,2,3,4];
my $arr_ref = [$r,1,2];
my $hash_ref = {a => $arr_ref, b => $arr_ref};
print $hashref , "\n";
print Dumper($hash_ref);


