sub double{
    $x = @_[0];
    return $x + $x;
}

sub doublev2{
    $x,$y = @_;
    return $x + $x;
}

sub doublev3{
    $x = shift;
    return $x + $x;
}

print double(1), "\n"; #should be 2
print doublev2(1), "\n"; #should be 2
print doublev3(1), "\n"; #should be 2

my @a = (1, 2);

sub f {
  my ($args_ref) = @_;
  $args_ref->[0] = 3;
}

f(\@a);
print "@a\n";