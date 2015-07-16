#! /usr/bin/ruby
require './ss2'

cgi = CGI.new
if cgi.params['jsonString']!=""
	data=cgi.params['jsonString'].to_s
	data.delete! '\\'
	data.delete! '['
	data.delete! ']'
	data=data[1..-1]
	data=data[0..-2]
	shieldsquare_service_url = 'http://' + $_ss2_domain + '/getss2data'
	shieldsquare_request = JSON.parse(CGI::unescape(data))
	shieldsquare_request["sid"] = $_sid
	shieldsquare_request["host"] = ENV[$_ipaddress]
	shieldsquare_post_data = JSON.generate(shieldsquare_request)
	if $_async_http_post== true
		error_code=shieldsquare_post_async shieldsquare_service_url, shieldsquare_post_data,$_timeout_value.to_s
	else
		error_code=shieldsquare_post_sync shieldsquare_service_url, shieldsquare_post_data, $_timeout_value
	end
end
puts "Content-type: text/html"
puts ''
