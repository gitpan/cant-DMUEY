use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'cant',
    license             => 'perl',
    dist_author         => 'Daniel Muey <http://drmuey.com/cpan_contact.pl>',
    dist_version_from   => 'lib/cant.pm',
    requires => {
        'Test::More'      => 0,
        'version'         => 0,
        'UNIVERSAL::cant' => 0,
    },
    add_to_cleanup      => [ 'cant-*' ],
);

$builder->create_build_script();
