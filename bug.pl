my %hash = ( a => 1, b => 2, c => 3 );
my $key = 'd';
if ( exists $hash{$key} ) {
    print "Key '$key' exists\n";
} else {
    print "Key '$key' does not exist\n";
    #This will not trigger
}

my $value = $hash{$key};
print "Value of '$key': $value\n"; #This will print undef

#The problem is the key 'd' is not defined in the hash, so accessing $hash{$key} will return undef
#However, the exists function only checks if the key exists in the hash, not if it has a defined value
#Therefore, the if condition will not trigger even though $hash{$key} is undef