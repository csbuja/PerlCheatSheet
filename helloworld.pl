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

print(@stack,"\n")