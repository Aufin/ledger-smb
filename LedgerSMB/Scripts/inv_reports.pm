=head1 NAME

LedgerSMB::Scripts::inv_reports - Inventory Reports in LedgerSMB

=head1 SYNPOSIS

  LedgerSMB::Scripts::inv_reports::search_adj($request);

=head1 DESCRIPTION

This provides the general inventory reports for LedgerSMB.

=head1 ROUTINES

=over

=item search_adj

Searches for inventory adjustment reports

=cut

package LedgerSMB::Scripts::inv_reports;

sub search_adj{
    my ($request) = @_;
    use LedgerSMB::Report::Inventory::Search_Adj;
    my $rpt = LedgerSMB::Report::Inventory::Search_Adj->new(%$request);
    $rpt->run_report;
    $rpt->render($request);
}

=item adj_details

Shows adjustment details

=cut 

sub adj_details {
    my ($request) = @_;
    use LedgerSMB::Report::Inventory::Adj_Detail;
    my $rpt = LedgerSMB::Report::Inventory::Adj_Detail->new(%$request);
    $rpt->run_report;
    $rpt->render($request);
}

=back

=head1 COPYRIGHT

COPYRIGHT (C) 2012 The LedgerSMB Core Team.  This file may be re-used under the
terms of the LedgerSMB General Public License version 2 or at your option any
later version.  Please see enclosed LICENSE file for details.

=cut

1;
