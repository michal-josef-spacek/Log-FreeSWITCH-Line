use strict;
use warnings;

use Test::More 'tests' => 3;
use Test::NoWarnings;

BEGIN {

	# Test.
	use_ok('Log::FreeSWITCH::Line::Data');
}

# Test.
require_ok('Log::FreeSWITCH::Line::Data');
