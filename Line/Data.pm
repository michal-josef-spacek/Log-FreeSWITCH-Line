package Log::FreeSWITCH::Line::Data;

# Pragmas.
use strict;
use warnings;

# Modules.
use Mo qw(is required);

has date => (
	'is' => 'ro',
	'required' => 1,
);
has file => (
	'is' => 'ro',
	'required' => 1,
);
has file_line => (
	'is' => 'ro',
	'required' => 1,
);
has message => (
	'is' => 'ro',
);
has raw => (
	'is' => 'ro',
	'required' => 1,
);
has time => (
	'is' => 'ro',
	'required' => 1,
);
has type => (
	'is' => 'ro',
	'required' => 1,
);

1;

__END__
