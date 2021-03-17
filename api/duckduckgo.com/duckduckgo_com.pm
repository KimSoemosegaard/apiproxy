##  ====================================================================
##  api/duckduckgo.com/duckduckgo_com.pm
##  ====================================================================

package APIProxy::API::duckduckgo_com;
use parent qw(APIProxy::API);
my $site = "duckduckgo.com";

##  Pragmas
use strict;
use warnings;
use open qw(:std :utf8);
use utf8;

##  Packages
use HTTP::Status qw(:constants);
use URI::Encode qw(uri_encode);

##  Local packages
use lib '/opt/apiproxy/lib';
use APIProxy::Err;


##
##  @param \%params     query parameters
##  @return		JSON hash of IP information
##

sub query
{
    my $self = shift;
    my $params = shift || {};

    my $query = $params->{query} || "";
    $query =~ m{[a-z]}i or
	return err(undef, "Invalid query parameter");

    my $url = "https://api.${site}/"
        . "?q=" . uri_encode($query)
        . "&format=json";

    my ($json, $code) = $self->get_json($url);
    defined($code) or
	return undef;
    $code == HTTP_NOT_FOUND and
	return err(undef, "No information available on '${query}'");
    return $json;
}


__PACKAGE__;
__END__
