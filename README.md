# NAME

MojoX::Renderer::JSON::XS - Fast JSON::XS handler for Mojolicious::Renderer

# SYNOPSIS

    sub setup {
        my $app = shift;

        # Via plugin
        $app->plugin('JSON::XS');

        # Or manually
        $app->renderer->add_handler(
            json => MojoX::Renderer::JSON::XS->build,
        );
    }

# DESCRIPTION

MojoX::Renderer::JSON::XS provides fast [JSON::XS](http://search.cpan.org/perldoc?JSON::XS) renderer to [Mojolicious](http://search.cpan.org/perldoc?Mojolicious) applications.

# METHODS

## build

Returns a handler for `Mojolicious::Renderer` that calls `JSON::XS::encode_json`.

# SEE ALSO

[JSON::XS](http://search.cpan.org/perldoc?JSON::XS)
[Mojolicious](http://search.cpan.org/perldoc?Mojolicious)
[Mojolicious::Renderer](http://search.cpan.org/perldoc?Mojolicious::Renderer)

# LICENSE

Copyright (C) yowcow.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

yowcow <yowcow@cpan.org>
