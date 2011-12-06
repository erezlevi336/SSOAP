 #!perl -w

use SOAP::Lite;

$soap_response = SOAP::Lite
    -> uri('http://www.soaplite.com/Demo')
    -> proxy('http://services.soaplite.com/hibye.cgi')
    -> languages();

@res = $soap_response->paramsout;

$res = $soap_response->result;                               
  print "Result is $res, outparams are @res\n";

