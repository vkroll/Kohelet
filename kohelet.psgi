use strict;
use warnings;

use Kohelet;

my $app = Kohelet->apply_default_middlewares(Kohelet->psgi_app);
$app;

