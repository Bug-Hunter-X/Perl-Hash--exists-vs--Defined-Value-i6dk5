my %hash = ( a => 1, b => 2, c => 3 );
my $key = 'd';
if ( exists $hash{$key} && defined $hash{$key} ) {
    print "Key '$key' exists and is defined\n";
} elsif (exists $hash{$key}) {
    print "Key '$key' exists but is undefined\n";
} else {
    print "Key '$key' does not exist\n";
}

my $value = defined $hash{$key} ? $hash{$key} : 'N/A'; #Use defined to check before accessing the value
print "Value of '$key': $value\n";