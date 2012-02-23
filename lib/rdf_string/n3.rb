require 'rdf/n3'
module RDFString
	module N3
		def n3?
			self.match(/@(base|prefix)/) && !self.jsonld? if self.is_a?(String)
		end
	end
end
