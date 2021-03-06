# -*- coding: UTF-8 -*-
require 'rdf/rdfa'
module RDFString
	module RDFa
		# RDFaが使用されているか否かを判定する.
		# @return [Boolean] RDFaが使用されているか否かの判定結果
		def rdfa?
			if self.is_a?(Nokogiri::HTML::Document)
				%w(about resource prefix typeof property vocab).any? {|attr| self.at_xpath("//@#{attr}")}
			else
				(self.match(/<[^>]*(about|resource|prefix|typeof|property|vocab)\s*="[^>]*>/m) ||
				 self.match(/<[^>]*DOCTYPE\s+html[^>]*>.*xmlns:/im)
				) && !self.match(/<(\w+:)?(RDF)/)
			end
		end
	end
end
