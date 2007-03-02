use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Template::Provider::DBIC',
    VERSION_FROM        => 'lib/Template/Provider/DBIC.pm',
    ABSTRACT_FROM       => 'lib/Template/Provider/DBIC.pm',
    AUTHOR              => 'Dave Cardwell <cpan@davecardwell.co.uk',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More'  => 0,
        'version'     => 0,
        'Date::Parse' => 0,
        'Template'    => 2.15,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Template-Provider-DBIC-*' },
);
