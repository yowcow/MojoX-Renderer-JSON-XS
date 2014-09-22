requires 'perl', '5.010001';
requires 'JSON::XS';
requires 'Mojolicious';
requires 'parent';

on 'test' => sub {
    requires 'Test::More', '0.98';
    requires 'Test::Pretty';
};

