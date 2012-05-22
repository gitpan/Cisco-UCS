use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Cisco::UCS',
    AUTHOR              => q{Luke Poskitt <ltp@cpan.org>},
    VERSION_FROM        => 'lib/Cisco/UCS.pm',
    ABSTRACT_FROM       => 'lib/Cisco/UCS.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More'			=> 0,
	'Cisco::UCS::Chassis'		=> 0,
	'Cisco::UCS::Interconnect'	=> 0,
	'Cisco::UCS::FEX'		=> 0,
	'Cisco::UCS::Blade'		=> 0,
	'Cisco::UCS::ServiceProfile'	=> 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Cisco-UCS-*' },
);
