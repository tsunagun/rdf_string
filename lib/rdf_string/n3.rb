# -*- coding: UTF-8 -*-
require 'rdf/n3'
module RDFString
	module N3
		# N3か否かを判定する.
		# @return [Boolean] N3か否かの判定結果
		def n3?
			self.match(/@(base|prefix)/) && !self.jsonld? if self.is_a?(String)
		end
	end
end
