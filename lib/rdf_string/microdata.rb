# -*- coding: UTF-8 -*-
require 'rdf/microdata'
module RDFString
	module Microdata
		# Microdataが使用されているか否かを判定する.
		# @return [Boolean] Microdataが使用されているか否かの判定結果
		def microdata?
			if self.is_a?(Nokogiri::HTML::Document)
				%w(itemprop itemtype itemref itemscope itemid).any? {|attr| self.at_xpath("//@#{attr}")}
			else
				self.match(/<[^>]*(itemprop|itemtype|itemref|itemscope|itemid)[^>]*>/m)
			end
		end
	end
end
