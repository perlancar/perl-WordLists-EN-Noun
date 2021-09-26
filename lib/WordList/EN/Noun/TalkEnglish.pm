package WordList::EN::Noun::TalkEnglish;

use strict;
use warnings;
use WordList;
our @ISA = qw(WordList);

use Role::Tiny::With;
with 'WordListRole::FromArray';

# AUTHORITY
# DATE
# DIST
# VERSION

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


=head1 SEE ALSO

L<WordList::EN::Adjective::TalkEnglish>, L<WordList::EN::Adverb::TalkEnglish>.

Other C<WordList::EN::Noun::*> modules.

=cut
