my %h = ('name','john','age',39);
my %h_ = ('name' => 'john', "age" => 39);
my %h__ = (name => 'john', age => '39');

print $h__{'name'} , "\n"; #remember to put $ in front of the variable name
print $h__{name}, "\n";

print $h__{game}=="","\n";

#mapping to a reference
my @arr = qw(hello world);
$h__{arr} = \@arr;
my @output = @{$h__{arr}}; #make a copy based on the reference.
print @output, "\n";


my @keys = keys %h__;
my @values = values %h__;

my $hash_ref = \%h;
print(keys %h, "\n");
print $h{"age"},"\n";
print ${$hash_ref}{'age'}, "\n";
print $hash_ref->{age},"\n";
