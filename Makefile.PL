use inc::Module::Install;

name     'Acme-PM-Barcelona';
all_from 'lib/Acme/PM/Barcelona.pm';
author   'Alex Muntada <alexm@cpan.org>';

requires 'DateTime::Set';
requires 'DateTime';
requires 'DateTime::Event::ICal';

build_requires 'Test::More';

resources repository => 'http://github.com/alexm/acme-pm-barcelona.git';

install_script 'bin/pod2beamer';

auto_install;

WriteAll;

