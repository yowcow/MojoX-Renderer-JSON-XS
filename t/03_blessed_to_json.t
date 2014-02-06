package MyTestModule;
use strict;
use utf8;
use warnings;

sub new { bless $_[1] // +{ }, $_[0] }

sub TO_JSON {
    my $self = shift;
    +{ str => $self->{str}, };
}


package main;
use strict;
use utf8;
use warnings;
use JSON::XS qw(decode_json);
use Mojolicious::Lite;
use MojoX::Renderer::JSON::XS;
use Test::Mojo;
use Test::More;

my $app = app;
$app->renderer->add_handler(
    json => MojoX::Renderer::JSON::XS->build,
);

get '/blessed' => sub {
    my $c = shift;
    my $blessed = MyTestModule->new({ str => 'あいうえ' });
    $c->render(json => { blessed => $blessed });
};

{
    my $t = Test::Mojo->new($app);

    $t->get_ok('/blessed')->status_is(200);

    my $res = $t->tx->res->body;

    is_deeply decode_json($res), {
        blessed => {
            str => 'あいうえ',
        },
    };
};

done_testing;
