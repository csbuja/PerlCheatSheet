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

print $a <=> $b, "\n";

$b = 10;
print $a <=> $b, "\n";

$b = 5;
print $a <=> $b, "\n";


$a = "5";
$b = "5";

print($a == $b,"\n"); # 1
$b = "5*";
print($a == $b,"\n"); #


