require 'rdf/rdfxml'
module RDFString
	module DCHTML
		# RFC2731 http://www.ietf.org/rfc/rfc2731.txt
		def dc_html(uri)
			parser = Nokogiri::HTML.parse(self)
			ns = Hash.new
			parser.xpath("//link[starts-with(@rel, 'Schema\.')]").each do |link|
				prefix = link.at_xpath("@rel").text.split(".").last
				base_uri = link.at_xpath("@href").text
				ns[prefix] = base_uri
			end

			graph = RDF::Graph.new
			ns.each do |prefix, base_uri|
				parser.xpath("//meta[starts-with(@name, '#{prefix}')]").each do |meta|
					subject = RDF::URI.new(uri)
					predicate = RDF::URI.new(base_uri + meta.at_xpath("@name").text.split(".").last.downcase)
					object = RDF::Literal.new(meta.at_xpath("@content").text)
					meta.xpath("@lang").each do |lang|
						object.language = lang
					end
					graph << RDF::Statement.new(subject, predicate, object)
				end
			end
			return graph
		end
	end
end
