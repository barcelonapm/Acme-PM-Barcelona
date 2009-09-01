use inc::Module::Install;

name     'Acme-PM-Barcelona';
all_from 'lib/Acme/PM/Barcelona.pm';
author   'Alex Muntada <alexm@cpan.org>';

build_requires 'Test::More';

auto_install;

WriteAll;

