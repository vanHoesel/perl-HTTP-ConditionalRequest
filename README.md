# HTTP::ConditionalRequest

A fully RFC 9110 Compliant Perl implementation of Conditional Request - Evaluation of Preconditions

## Description

This module provides a complete implementation of the Conditional Request mechanisms as specified in [RFC 9110 Section 13](https://www.rfc-editor.org/rfc/rfc9110.html#name-conditional-requests). It handles the evaluation of preconditions for HTTP requests in strict compliance with the standard.

## Installation

```bash
cpanm HTTP::ConditionalRequest
```

Or manually:

```bash
perl Makefile.PL
make
make test
make install
```

## Synopsis

```perl
use HTTP::ConditionalRequest;

my $status;
my $message;

( $status, $message ) = HTTP::ConditionalRequest->evaluate(
    $incoming_request => (
        if_modified_since   => 'Wed, 21 Oct 2023 10:00:00 GMT',
        etag                => '2271-46ad-84e8-c370a3bca5f0',
    )
);

do {

    # procces request

} unless $status

```

or use imports:

```perl
use HTTP::ConditionalRequest qw/required/;

...

$status = required( $rqst => %meta_data );

```

## Features

- Full compliance with RFC 9110 Section 13
- Handles all standard HTTP precondition headers:
  - If-Match
  - If-None-Match
  - If-Modified-Since
  - If-Unmodified-Since
  - If-Range
- Proper evaluation of preconditions according to the RFC specification
- Support for both strong and weak validators

## Documentation

Detailed documentation is available after installation through perldoc:

```bash
perldoc HTTP::ConditionalRequest
```

## Author

Theo van Hoesel

## License

This software is copyright (c) 2024 by Theo van Hoesel.

This is free software; you can redistribute it and/or modify it under the same terms as the Perl 5 programming language system itself.

## See Also

- [RFC 9110 Section 13](https://www.rfc-editor.org/rfc/rfc9110.html#name-conditional-requests)
- [HTTP::Headers](https://metacpan.org/pod/HTTP::Headers)
- [HTTP::Message](https://metacpan.org/pod/HTTP::Message) 