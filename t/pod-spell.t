use strict;
use warnings;
use Test::More;

eval "use Test::Spelling";
plan skip_all => "Test::Spelling required for testing POD spelling" if $@;

my @ignore = ("Fandi\xf1o", "API", "CPAN", "GitHub", "affine",
              "hypercube", "hypercubes", "hyperplane", "hyperplanes",
              "hyperrectangle", "orthant", "orthonormal", "radians",
              "reimplements", "versor", "wishlist", "hypersphere", "kd",
              "Chebyshev");

local $ENV{LC_ALL} = 'C';
add_stopwords(@ignore);
all_pod_files_spelling_ok();

