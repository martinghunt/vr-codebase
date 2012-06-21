use strict;
use warnings;

use Test::More;
use Data::Dumper;

use File::Basename; 

#get the directory path to the test file
my (undef, $dir) = fileparse($0);

BEGIN { use_ok( 'Pathogens::Variant::Utils::BamParser' ); }

my $object = Pathogens::Variant::Utils::BamParser->new();
isa_ok ($object, 'Pathogens::Variant::Utils::BamParser');

$object->fetch_chromosome_size_into_hash("$dir/data/test.bam");


done_testing;
