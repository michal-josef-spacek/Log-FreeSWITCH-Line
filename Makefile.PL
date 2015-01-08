# Pragmas.
use strict;
use warnings;

# Modules.
use inc::Module::Install;

# Definition.
abstract 'FreeSWITCH log line processing.';
author 'Michal Spacek <skim@cpan.org>';
license 'bsd';
name 'Log-FreeSWITCH-Line';
readme_from 'Line.pm';
requires 'Error::Pure' => 0.22;
requires 'Error::Pure::Always' => 0.05;
requires 'Mo' => 0;
requires 'Readonly' => 0;
requires 'Scalar::Util' => 0;
requires 'perl' => '5.8.0';
resources 'bugtracker' => 'https://rt.cpan.org/Public/Dist/Display.html'.
	'?Name=Log-FreeSWITCH-Line';
resources 'homepage' => 'https://github.com/tupinek/Log-FreeSWITCH-Line';
resources 'repository' => 'git://github.com/tupinek/Log-FreeSWITCH-Line';
test_requires 'English' => 0;
test_requires 'Error::Pure::Utils' => 0.22;
test_requires 'File::Object' => 0.07;
test_requires 'Test::More' => 0;
test_requires 'Test::NoWarnings' => 0;
test_requires 'Test::Pod' => 0;
test_requires 'Test::Pod::Coverage' => 0;
tests_recursive;
version '0.03';

# Run.
WriteAll();
