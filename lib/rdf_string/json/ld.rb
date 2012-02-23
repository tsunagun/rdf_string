require 'json/ld'
module RDFString
	module JSON
		module LD
			def jsonld?
				self.match(/\{\s*"@(subject|context|type)"/m) if self.is_a?(String)
			end
		end
	end
end
