# Pragmas.
use strict;
use warnings;

# Modules.
use Test::NoWarnings;
use Test::Pod::Coverage 'tests' => 2;

# Test.
pod_coverage_ok('Log::FreeSWITCH::Line', 'Log::FreeSWITCH::Line is covered.');
