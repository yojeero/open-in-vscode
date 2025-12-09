# Once upon a time... Perl example
use strict;
use warnings;

package Vampire;
sub new {
    my ($class, $loc, $birth, $death) = @_;
    return bless { location => $loc, birth => $birth, death => $death, weaknesses => ['Sunlight'] }, $class;
}
sub age { $_[0]->{death} - $_[0]->{birth} }

package main;
my $d = Vampire->new('Transylvania', 1428, 1476);
print $d->{location} . ' age: ' . $d->age() . "\n";
