use 5.010;
use strictures;
use Test::More;

if (!$ENV{RELEASE_TESTING}) {
    plan skip_all => "Author tests not required for installation";
}

# Ensure a recent version of Test::CheckManifest
my $min_tcm = 0.9;
eval "use Test::CheckManifest $min_tcm"
	or plan skip_all => "Test::CheckManifest $min_tcm required";

ok_manifest();
