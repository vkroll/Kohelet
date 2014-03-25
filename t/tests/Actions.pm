package Actions;

use Moose::Role;


sub controller_has_action {
    my($controller, $actionname) = @_;
    my @actions =  $controller->get_action_methods();
    @actions = map $_->name, @actions;
    my @true = grep( /$actionname/, @actions );
    return defined $true[0];
}

1;
