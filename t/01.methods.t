use Test::More tests => 7;

use lib '../lib';

BEGIN {
    use_ok( 'cant' );
}

diag( "Testing cant $cant::VERSION mthods" );

use Digest::MD5;

ok( !Digest::MD5->cant('md5'), 'Bare name space valid');
ok( Digest::MD5->cant('dance'),   'Bare name space invalid');

my $ns = 'Digest::MD5';
ok( !$ns->cant('md5'), 'Var name space valid');
ok( $ns->cant('dance'),   'Var name space invalid');

my $obj = Digest::MD5->new();
ok( !$obj->cant('md5'), 'Obj valid');
ok( $obj->cant('dance'),   'Obj invalid');