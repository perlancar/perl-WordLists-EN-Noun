package WordList::EN::Noun::TalkEnglish;

# AUTHORITY
# DATE
# DIST
# VERSION

use WordList;
our @ISA = qw(WordList);

use Role::Tiny;
use Role::Tiny::With;
use Tables::Words::EN::Nouns::TalkEnglish;
use TablesRole::Util::Basic; # for scan_prereqs

with 'WordListRole::FromArray';

my $t = Tables::Words::EN::Nouns::TalkEnglish->new;
Role::Tiny->apply_roles_to_object($t, 'TablesRole::Util::Basic'); # for as_aoa
my $ary = [map {$_->[0]} @{ $t->as_aoa }];

sub _array { $ary }

our $SORT = 'custom';

# STATS

1;
# ABSTRACT: Common exception words (year 1) from twinkl.co.uk

=head1 DESCRIPTION

Source: L<https://twink.co.uk/>

=cut

__DATA__
the
a
do
to
today
of
said
says
are
were
was
is
his
has
I
you
your
they
be
he
me
she
we
no
go
so
by
my
here
there
where
love
come
some
one
once
ask
friend
school
put
push
pull
full
house
our
