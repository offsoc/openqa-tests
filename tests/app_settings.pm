use base 'app_test';
use strict;
use warnings;
use testapi;
use gnomeutils;

sub run {
    start_app('gnome-control-center');
    assert_screen('app_settings_startup', 10);
    close_app;
}

sub test_flags {
    return { fatal => 0 };
}

1;
