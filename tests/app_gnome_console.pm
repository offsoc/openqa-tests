use base 'app_test';
use strict;
use warnings;
use testapi;
use gnomeutils;

sub run {
    start_app('kgx');
    assert_screen('app_gnome_console_home', 10);
    close_app;
}

1;
