require 'rdf/rdfxml'
module RDFString
	module RDFXML
		def rdfxml?
			self.match(/<(\w+:)?(RDF)/) if self.is_a?(String)
		end
	end
end
