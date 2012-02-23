require "rdf_string/version"
require 'rdf_string/rdfa'
require 'open-uri'
require 'nokogiri'
require 'rdf'

module RDFString
	include RDFa
	def self.define_filter(name)
		define_method(name) do |*attr|
			graph = RDF::Graph.new
			return graph unless send(name + "?")
			graph << RDF::Reader.for(name.to_sym).new(self, :base_uri => attr[0])
		end
	end

	define_filter "rdfa"

end
