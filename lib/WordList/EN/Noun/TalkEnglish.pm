package WordList::EN::Noun::TalkEnglish;

use strict;
use warnings;
use WordList;

# AUTHORITY
# DATE
# DIST
# VERSION

our @ISA = qw(WordList);

use Role::Tiny::With;
with 'WordListRole::FromArray';

sub _array {
    require TableData::Lingua::Word::EN::Noun::TalkEnglish;

    my $t = TableData::Lingua::Word::EN::Noun::TalkEnglish->new;
    my $ary = [];
    $t->each_row_arrayref(
        sub {
            my $row = shift;
            push @$ary, $row->[0];
            1;
        }
    );
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

L<TableData::Lingua::Word::EN::Noun::TalkEnglish>

L<WordList::EN::Adjective::TalkEnglish>, L<WordList::EN::Adverb::TalkEnglish>.

Other C<WordList::EN::Noun::*> modules.

=cut
