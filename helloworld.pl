use warnings;

print(&sum(1..10), "\n");

sub sum{
    my $total = 0;
    for my $i(@_){
        $total += $i;
    }
    return $total;
}

my $a = 0b0101;
print($a,"\n");



#Source: https://www.perltutorial.org/perl-operators/#String_concatenation_operators
# print -1, 0, 1 by using the comparison operator

my $a = 10;
my $b = 20;

#print $a <=> $b, "\n";

$b = 10;
#print $a <=> $b, "\n";

$b = 5;
# print $a <=> $b, "\n";


$a = "5";
$b = "5";

#print($a);
#print($b);

print($a eq $b,"\n"); # 1
$b = "5dfasdf";
print("B = ", $b, "\n");
$c = $a eq $b;
$d = $c eq "";
print($d);
#learned that perl doesn't support boolean data types
if ($c) {
    print("Incorrect\n");
}
else {
    print("These are not equal folks\n");
}

$a = 5;

$c = $a << 1;
print $c, "\n";

print "badger" . "badger" . "badger" . "\n";
print "badger " x 3, "\n";

my $s;
print chomp($s = <STDIN>), "\n";
print $s,"\n";
print $s, "\n";


#lists
print(("eh",2,"oh")[2],"\n");
print((0..2)[0,1],"\n"); # list slicing with a range
print(a..z,"\n");

#Arrays
#source: https://www.perltutorial.org/perl-array/
my @weekdays = qw(Monday Tuesday Wednesday Thursday Friday);
print("@weekdays","\n");

print($weekdays[0],"\n");
print(@weekdays[0,1],"\n");

#array length example
my $count = scalar @weekdays;
print($count, "\n"); #5 weekdays in the week


#modifying array
$weekdays[0] = "M";
@weekdays[1..4] = qw(T W T F); # note the @ sign instead of the $ sign
print("@weekdays","\n");

#just like python, you can leverage an array as a stack
my @stack = (1,2,3);
push(@stack, "4h");

print(@stack,"\n");

pop(@stack);
unshift(@stack,0);
print(@stack,"\n");


# Function definition
sub Average {
   # get total number of arguments passed.
   $n = scalar(@_);
   print($_[0],"\n");
   $sum = 0;

   foreach $item (@_) {
      $sum += $item;
   }
   $average = $sum / $n;

   print "Average for the given numbers : $average\n";
   return $average;
}

# Function call
print(Average(10, 20, 30),"\n");



#hash table, or hash

my %countries = qw(England English 
                   France French 
                   Spain Spanish 
                   China Chinese 
                   Germany German);

my %countries =  ( 'England' => 'English',
	           'France' => 'French', 
    	       'Spain' => 'Spanish', 
    	       'China' => 'Chinese', 
	           'Germany' => 'German');

my $language = $countries{'England'};
print($language,"\n");
$countries{"Netherlands"} = "Dutch";
my $language = $countries{'Netherlands'};
print($language,"\n");
delete $countries{"Netherlands"};
#my $language = $countries{'Netherlands'}; gets a runtime error
#print($language,"\n");



sub twoSum {
    my %d = ();
    $aref = $_[0];
    $target = $_[1];
    print("The target is: $target.","\n");
    for(my $i = 0; $i < @$aref; $i++)
    {
        my $val = @$aref[$i];
        $d{"$val"} = $i;
    }

    for(my $i = 0; $i < @$aref; $i++)
    {
        my $val = @$aref[$i];
        if(exists($d{$target - $val}))
        {
            my $j = $d{$target - $val};
            if($i != $j)
            {
                 my @ans = ($j,$i);
                 #@ans = ($target - $val,$val);
                 return @ans;
            }
        }
    }

    my @ans = ();
    return @ans;

}

my @a = (1..9);
#perl style
for $i (@a){
	print("$i","\n");
}


my @values = (1..6);
for ( my $i = 0; $i < @values; $i++ ) {
    print($i,"\n");
    print($values[$i],"\n");
    print("\n")
}

@ans = twoSum(\@values,7);
print(@ans,"\n");


$i = 1;
$j = 2;
if($i != $j)
{
    print("good","\n");
}