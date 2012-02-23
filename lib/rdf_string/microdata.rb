require 'rdf/microdata'
module RDFString
	module Microdata
		def microdata?
			if self.is_a?(Nokogiri::HTML::Document)
				%w(itemprop itemtype itemref itemscope itemid).any? {|attr| self.at_xpath("//@#{attr}")}
			else
				self.match(/<[^>]*(itemprop|itemtype|itemref|itemscope|itemid)[^>]*>/m)
			end
		end
	end
end
