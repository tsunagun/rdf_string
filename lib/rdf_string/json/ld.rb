# -*- coding: UTF-8 -*-
require 'json/ld'
module RDFString
	module JSON
		module LD
			# JSON-LDか否かを判定する.
			# @return [Boolean] JSON-LDか否かの判定結果
			def jsonld?
				self.match(/\{\s*"@(subject|context|type)"/m) if self.is_a?(String)
			end
		end
	end
end
