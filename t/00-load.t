#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'Acme::PM::Barcelona' );
}

diag( "Testing Acme::PM::Barcelona $Acme::PM::Barcelona::VERSION, Perl $], $^X" );
