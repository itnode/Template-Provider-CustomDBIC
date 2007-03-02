use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Template::Provider::DBIC',
    license             => 'perl',
    author              => 'Dave Cardwell <cpan@davecardwell.co.uk>',
    dist_version_from   => 'lib/Template/Provider/DBIC.pm',
    dist_abstract       => 'Load templates using DBIx::Class.',
    requires => {
        'Test::More'  => 0,
        'version'     => 0,
        'Date::Parse' => 0,
        'Template'    => 2.15,
    },
    build_requires => {
        'DBD::SQLite' => 1.11,
        'DBIx::Class' => 0,
    },
    add_to_cleanup      => [ 'Template-Provider-DBIC-*' ],
);

$builder->create_build_script();
