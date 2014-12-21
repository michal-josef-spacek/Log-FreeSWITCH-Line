package Log::FreeSWITCH::Line::Data;

# Pragmas.
use strict;
use warnings;

# Modules.
use English;
use Error::Pure qw(err);
use Mo qw(builder is required);

has date => (
	'is' => 'ro',
	'required' => 1,
);
has datetime_obj => (
	'is' => 'ro',
	'builder' => '_datetime',
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
);
has time => (
	'is' => 'ro',
	'required' => 1,
);
has type => (
	'is' => 'ro',
	'required' => 1,
);

# Create DateTime object.
sub _datetime {
	my $self = shift;
	require DateTime;
	my ($year, $month, $day) = split m/-/ms, $self->date;
	my ($hour, $min, $sec_mili) = split m/:/ms, $self->time;
	my ($sec, $mili) = split m/\./ms, $sec_mili;
	my $dt = eval {
		DateTime->new(
			'year' => $year,
			'month' => $month,
			'day' => $day,
			'hour' => $hour,
			'minute' => $min,
			'second' => $sec,
			'nanosecond' => $mili * 1000,
		);
	};
	if ($EVAL_ERROR) {
		err 'Cannot create DateTime object.',
			'Error', $EVAL_ERROR;
	}
	return $dt;
}

1;

__END__
