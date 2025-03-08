use strict;
use warnings;

use Test::Most tests => 2;

BEGIN {
    use_ok('HTTP::ConditionalRequest')
        or BAIL_OUT("Failed to load HTTP::ConditionalRequest");
}

diag("Testing HTTP::ConditionalRequest $HTTP::ConditionalRequest::VERSION");
ok(defined $HTTP::ConditionalRequest::VERSION, 'version is defined'); 