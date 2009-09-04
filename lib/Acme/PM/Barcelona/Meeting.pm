package Acme::PM::Barcelona::Meeting;

use warnings;
use strict;

=head1 NAME

Acme::PM::Barcelona::Meeting - When is the next meeting?

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

use base 'DateTime::Set';
use DateTime;
use DateTime::Event::ICal;

=head1 SYNOPSIS

  use Acme::PM::Barcelona::Meeting;

  my $barcelona_pm = Acme::PM::Barcelona::Meeting->new();
  print $barcelona_pm->next->datetime(), "\n";

=head1 DESCRIPTION

This module helps finding when the next Barcelona Perl Mongers meeting
will take place.

=head1 USAGE

=over 4

=item new

Creates a parent DateTime::Set object. All other methods are inherited.

=cut

sub new {
    my $class = shift;

    # every last Thu of the month at 20:00
    my $self = DateTime::Event::ICal->recur(
        dtstart  => DateTime->now,
        freq     => 'monthly',
        byday    => [ "-1th" ],
        byhour   => [ 20 ],
        byminute => [ 0 ],
        bysecond => [ 0 ],
    );

    bless $self, $class;
}

=back

=head1 AUTHOR

Alex Muntada, C<< <alexm at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-acme-pm-barcelona at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Acme-PM-Barcelona>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Acme::PM::Barcelona::Meeting


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Acme-PM-Barcelona>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Acme-PM-Barcelona>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Acme-PM-Barcelona>

=item * Search CPAN

L<http://search.cpan.org/dist/Acme-PM-Barcelona>

=back


=head1 ACKNOWLEDGEMENTS

Barcelona Perl Mongers

=head1 COPYRIGHT & LICENSE

Copyright 2009 Alex Muntada, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut

1; # End of Acme::PM::Barcelona::Meeting
