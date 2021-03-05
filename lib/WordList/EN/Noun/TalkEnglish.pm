package WordList::EN::Noun::TalkEnglish;

# AUTHORITY
# DATE
# DIST
# VERSION

use strict;
use warnings;
use WordList;
our @ISA = qw(WordList);

use Role::Tiny::With;
with 'WordListRole::FromArray';

sub _array {
    require Tables::Words::EN::Nouns::TalkEnglish;

    my $t = Tables::Words::EN::Nouns::TalkEnglish->new;
    my $ary = [];
    while (my $row = $t->get_row_arrayref) { push @$ary, $row->[0] }
    $ary;
}

our $DYNAMIC = 1;
our $SORT = 'custom';

# STATS

1;
# ABSTRACT: Words that are used as nouns only, from talkenglish.com

=head1 DESCRIPTION

Source: L<https://www.talkenglish.com/vocabulary/top-1500-nouns.aspx>

=cut
