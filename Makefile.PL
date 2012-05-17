use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Cisco::UCS',
    AUTHOR              => q{Luke Poskitt <luke.poskitt@gmail.com>},
    VERSION_FROM        => 'lib/Cisco/UCS.pm',
    ABSTRACT_FROM       => 'lib/Cisco/UCS.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Cisco-UCS-*' },
);
