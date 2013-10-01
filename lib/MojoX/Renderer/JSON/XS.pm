package MojoX::Renderer::JSON::XS;
use 5.008005;
use strict;
use warnings;
our $VERSION = "0.01";

use JSON::XS qw(encode_json);

sub build {
    sub {
        my ($renderer, $c, $output, $options) = @_;
        $$output = encode_json($options->{json});
    };
}

1;

__END__

=encoding utf-8

=head1 NAME

MojoX::Renderer::JSON::XS - Fast JSON::XS handler for Mojolicious::Renderer

=head1 SYNOPSIS

    sub setup {
        my $app = shift;

        # Via plugin
        $app->plugin('JSON::XS');

        # Or manually
        $app->renderer->add_handler(
            json => MojoX::Renderer::JSON::XS->build,
        );
    }

=head1 DESCRIPTION

MojoX::Renderer::JSON::XS provides fast L<JSON::XS> renderer to L<Mojolicious> applications.

=head1 METHODS

=head2 build

Returns a handler for C<Mojolicious::Renderer> that calls C<JSON::XS::encode_json>.

=head1 SEE ALSO

L<JSON::XS>
L<Mojolicious>
L<Mojolicious::Renderer>

=head1 LICENSE

Copyright (C) yowcow.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

yowcow E<lt>yowcow@cpan.orgE<gt>

=cut

