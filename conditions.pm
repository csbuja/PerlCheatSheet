use List::Util qw(any first);

$age = 17;

if($age == 18) {
    print "a", "\n";
}
elsif($age > 18){
    print "b", "\n";
}
else {
    print "c", "\n";
}

#don't use "unless" -- just use if (! condition)

#let's try using a condition to filter an array
my @numbers = (-1,0,2);
my @negatives = grep { $_ < 0} @numbers; #_ whatever makes sense at this point in the code

my $contains_negative = @negatives; #length can be used as 
if ($contains_negative) {
 print "numbers array indeed has a negative number","\n";
}

my $num_ref = \@numbers;
print "the first number should be negative " . ${$num_ref}[0] . "\n";

my @all_numbers = (9, -7, -6, 5, 4);
my $first_number = first {1} @all_numbers;
print "first number is " . $first_number . "\n";

if(any {$_ == 9} @all_numbers){
    print "list has a 9", "\n";
}