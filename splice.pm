use Data::Dumper;

@arr = (0..7);

my ($a, $b) = splice(@arr,0,3);

print("is it 0? " . $a, "\n");
print("is it 1? " . $b, "\n");

print @arr, "\n";

print Dumper(@arr);