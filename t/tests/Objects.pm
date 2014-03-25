package Objects;

use Moose::Role;
use Catalyst::Test qw( Kohelet );
 
sub get_controller {
    my $name = shift;

    my($res, $c) = ctx_request( '/');
    return $c->controller($name);
}

1;
