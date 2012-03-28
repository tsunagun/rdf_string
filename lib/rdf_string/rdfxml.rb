# -*- coding: UTF-8 -*-
require 'rdf/rdfxml'
module RDFString
	module RDFXML
		# RDF/XMLか否かを判定する.
		# @return [Boolean] RDF/XMLか否かの判定結果
		def rdfxml?
			self.match(/<(\w+:)?(RDF)/) if self.is_a?(String)
		end
	end
end
