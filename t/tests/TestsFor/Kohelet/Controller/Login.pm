package TestsFor::Controller::Login;

use Test::Class::Moose;
with "Actions", "Objects";

use Data::Dumper;

sub test_object {
    my $o = get_controller("Login");
    isa_ok($o, "Kohelet::Controller::Login");
    isa_ok($o, "Catalyst::Controller");
    ok(controller_has_action($o, "index"), "Controller has Action index");
    ok(! controller_has_action($o, "index1"), "Controller has no Action index1");
}


1;
