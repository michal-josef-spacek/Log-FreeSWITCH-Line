package Log::FreeSWITCH::Line;

# Pragmas.
use strict;
use warnings;

# Modules.
use Error::Pure qw(err);
use Log::FreeSWITCH::Line::Data;
use Mo;
use Readonly;
use Scalar::Util qw(blessed);

# Constants.
Readonly::Scalar our $SPACE => q{ };

# Version.
our $VERSION = 0.01;

# Parse FreeSWITCH log line.
sub parse {
	my ($self, $data) = @_;
	my $one;
	if ($data =~ m/^(\d{4}-\d{2}-\d{2})\s+(\d{2}:\d{2}:\d{2}\.\d+)\s+\[(\w+)\]\s+([^:]+):(\d+)\s+(.*)$/ms) {
		$one = Log::FreeSWITCH::Line::Data->new(
			'date' => $1,
			'file' => $4,
			'file_line' => $5,
			'message' => $6,
			'raw' => $data,
			'time' => $2,
			'type' => $3,
		);
	} else {
		err 'Cannot parse data.',
			'Data', $data;
	}
	return $one;
}

# Serialize FreeSWITCH log line.
sub serialize {
	my ($self, $data_o) = @_;
	
	# Check object.
	if (! blessed($data_o) || ! $data_o->isa('Log::FreeSWITCH::Line::Data')) {
		err "Serialize object must be 'Log::FreeSWITCH::Line::Data' object.";
	}

	# Serialize.
	my $data = $data_o->date.
		$SPACE.$data_o->time.
		$SPACE.'['.$data_o->type.']'.
		$SPACE.$data_o->file.':'.$data_o->file_line.
		$SPACE.$data_o->message;
	return $data;
}

1;

__END__
