package TestsFor::Controller::Login;

use Test::Class::Moose;
use Catalyst::Test qw( Kohelet );
use Data::Dumper;

sub test_object {
    my $o = get_object();
    isa_ok($o, "Kohelet::Controller::Login");
    isa_ok($o, "Catalyst::Controller");
    ok(controller_has_action($o, "index"), "Controller has Action index");
    ok(! controller_has_action($o, "index1"), "Controller has no Action index1");
}

sub controller_has_action {
    my($controller, $actionname) = @_;
    my @actions =  $controller->get_action_methods();
    @actions = map $_->name, @actions;
    my @true = grep( /$actionname/, @actions );
    return defined $true[0];
}

sub get_object {
    my($res, $c) = ctx_request( '/');
    return $c->controller('Login');

}


1;
