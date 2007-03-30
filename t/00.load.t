use Test::More tests => 1;

use lib '../lib';

BEGIN {
use_ok( 'cant' );
}

diag( "Testing cant $cant::VERSION" );
