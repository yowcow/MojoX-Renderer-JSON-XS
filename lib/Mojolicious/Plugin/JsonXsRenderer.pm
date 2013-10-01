package Mojolicious::Plugin::JsonXsRenderer;
use strict;
use warnings;
use parent qw(Mojolicious::Plugin);

use MojoX::Renderer::JSON::XS;

sub register {
    my ($self, $app, $args) = @_;
    $app->renderer->add_handler(
        json => MojoX::Renderer::JSON::XS->build,
    );
}

1;

__END__

=head1 NAME

Mojolicious::Plugin::JsonXsRenderer - L<MojoX::Renderer::JSON::XS> plugin

=head1 SYNOPSIS

    $app->plugin('json_xs_renderer');

=head1 DESCRIPTION

Mojolicious::Plugin::JsonXsRenderer plugs L<MojoX::Renderer::JSON::XS> into L<Mojolicious> application.

=head1 METHODS

=head2 register

Registers JSON handler from L<MojoX::Renderer::JSON::XS>.

=head1 SEE ALSO

L<MojoX::Renderer::JSON::XS>
L<Mojolicious::Plugin>

=head1 LICENSE

Copyright (C) yowcow.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

yowcow E<lt>yowcow@cpan.orgE<gt>

=cut

