use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => 'HTTP::ConditionalRequest',
    VERSION_FROM => 'lib/HTTP/ConditionalRequest.pm',
    test         => {
        TESTS => 't/HTTP/ConditionalRequest/*.t'
    },
); 