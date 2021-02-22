$s = "the quick brown fox jumped over the lazy dog";

if ($s =~ /dog/){
    print "found","\n";
}

my $test = "there is a Wolf somewhere";
if ($test =~ /([wW]ol[Ff])/) {
  my $matched_wolf = $1;
  print "there is a $matched_wolf somewhere but you already knew that!","\n";
}

#substituting
my $test = "there is a Wolf somewhere";
$test =~ s/([wW]olf)/bear/;
print $test;