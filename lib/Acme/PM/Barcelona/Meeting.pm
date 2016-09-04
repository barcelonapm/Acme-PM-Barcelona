use warnings;
use strict;

package Acme::PM::Barcelona::Meeting;
# ABSTRACT: When is the next meeting?

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

=head1 ACKNOWLEDGEMENTS

Barcelona Perl Mongers

=cut

1; # End of Acme::PM::Barcelona::Meeting
