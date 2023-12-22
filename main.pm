use strict;
use warnings;
use testapi;
use autotest;
use needle;
use File::Basename;

my $distri = testapi::get_required_var('CASEDIR') . '/lib/gnomeosdistribution.pm';
require $distri;
testapi::set_distribution(gnomeosdistribution->new);

$testapi::username = 'testuser';
$testapi::password = 'testingtesting123';

my $testsuite = testapi::get_required_var('TEST');

if ($testsuite eq "gnome_install") {
    autotest::loadtest("tests/gnome_install.pm");
    autotest::loadtest("tests/gnome_welcome.pm");
    autotest::loadtest("tests/gnome_journal_capture_fix.pm");
    autotest::loadtest("tests/gnome_disable_update_notification.pm");
    autotest::loadtest("tests/gnome_desktop.pm");
    autotest::loadtest("tests/gnome_shutdown.pm");
} elsif ($testsuite eq "gnome_apps") {
    autotest::loadtest("tests/gnome_welcome.pm");
    autotest::loadtest("tests/gnome_journal_capture_fix.pm");
    autotest::loadtest("tests/gnome_disable_update_notification.pm");
    autotest::loadtest("tests/gnome_desktop.pm");
    autotest::loadtest("tests/gnome_audio.pm");
    autotest::loadtest("tests/app_baobab.pm");
    autotest::loadtest("tests/app_epiphany.pm");
    autotest::loadtest("tests/app_evince.pm");
    autotest::loadtest("tests/app_gnome_calculator.pm");
    autotest::loadtest("tests/app_gnome_calendar.pm");
    autotest::loadtest("tests/app_gnome_characters.pm");
    autotest::loadtest("tests/app_gnome_clocks.pm");
    autotest::loadtest("tests/app_gnome_connections.pm");
    autotest::loadtest("tests/app_gnome_console.pm");
    autotest::loadtest("tests/app_gnome_contacts.pm");
    autotest::loadtest("tests/app_gnome_disk_utility.pm");
    autotest::loadtest("tests/app_gnome_font_viewer.pm");
    autotest::loadtest("tests/app_gnome_weather.pm");
    autotest::loadtest("tests/app_gnome_logs.pm");
    autotest::loadtest("tests/app_gnome_maps.pm");
    autotest::loadtest("tests/app_gnome_music.pm");
    autotest::loadtest("tests/app_gnome_software.pm");
    autotest::loadtest("tests/app_gnome_system_monitor.pm");
    autotest::loadtest("tests/app_gnome_text_editor.pm");
    # This is temporary removed - see:
    # https://gitlab.gnome.org/GNOME/loupe/-/issues/290#note_1947539
    # Should be re-enabled before GNOME 46 release
    #autotest::loadtest("tests/app_loupe.pm");
    autotest::loadtest("tests/app_nautilus.pm");
    autotest::loadtest("tests/app_snapshot.pm");
    autotest::loadtest("tests/app_settings.pm");
    autotest::loadtest("tests/app_simple_scan.pm");
    autotest::loadtest("tests/app_totem.pm");
    autotest::loadtest("tests/app_yelp.pm");

} elsif ($testsuite eq "gnome_accessibility") {
    autotest::loadtest("tests/gnome_welcome.pm");
    autotest::loadtest("tests/gnome_journal_capture_fix.pm");
    autotest::loadtest("tests/gnome_disable_update_notification.pm");
    autotest::loadtest("tests/gnome_desktop.pm");
    autotest::loadtest("tests/a11y_seeing.pm");
    autotest::loadtest("tests/a11y_text_to_speech.pm");
    autotest::loadtest("tests/a11y_hearing.pm");

} else {
    die("Invalid testsuite: '$testsuite'");
}

1;
