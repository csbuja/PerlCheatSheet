my @all_numbers = (9, -7, -6, 5, 4);

$i = 0;
for my $number (@all_numbers){
    print $i . ": " . $number . ", ";
    $i += 1;
}
print "\n";


@doubled_arr = ();

for my $number (@all_numbers){
    push @doubled_arr, $number * 2;
}


#functional programming - looping with map
@doubled_arr = map {$_*2} @all_numbers;

for my $number (@doubled_arr){
    print $number . " "
}
print("\n");

#map into hash
@arr = (1,2,3,4);
%h = map {$_,$_}  @arr;

#map into multiple elements - This one makes 2n elements
@duplicates = map {$_, $_ + 1} @arr; 

