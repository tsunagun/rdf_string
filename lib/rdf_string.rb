# -*- coding: UTF-8 -*-
require "rdf_string/version"
require 'rdf_string/rdfa'
require 'rdf_string/microdata'
require 'rdf_string/rdfxml'
require 'rdf_string/dc_html'
require 'rdf_string/json/ld'
require 'rdf_string/n3'
require 'open-uri'
require 'nokogiri'
require 'rdf'

# 文字列に含まれるメタデータをRDFグラフとして抽出するモジュール.
# Stringクラスでincludeして使用する.
# @example
# 	require 'rdf_string'
# 	class String
# 		include RDFString
# 	end
# 	str = open('example.rdf').read
# 	graph = str.rdfxml
module RDFString
	include RDFa
	include Microdata
	include RDFXML
	include DCHTML
	include JSON::LD
	include N3

	def self.define_filter(name)
		define_method(name) do |options={}|
			graph = RDF::Graph.new
			return graph unless send(name + "?")
			graph << RDF::Reader.for(name.to_sym).new(self, options)
		end
	end


	# @method rdfa(options)
	# RDFaで記述されたメタデータを抽出
	# @param [Hash] options RDF::Reader.newのオプション
	# @return [RDF::Graph] RDFaで記述されていたRDFグラフ
	define_filter "rdfa"

	# @method microdata(options)
	# Microdataで記述されたメタデータを抽出
	# @param [Hash] options RDF::Reader.newのオプション
	# @return [RDF::Graph] Microdataで記述されていたRDFグラフ
	define_filter "microdata"

	# @method rdfxml(options)
	# RDF/XMLで記述されたメタデータを抽出
	# @param [Hash] options RDF::Reader.newのオプション
	# @return [RDF::Graph] RDF/XMLで記述されていたRDFグラフ
	define_filter "rdfxml"

	# @method jsonld(options)
	# JSON-LDで記述されたメタデータを抽出
	# @param [Hash] options RDF::Reader.newのオプション
	# @return [RDF::Graph] JSON-LDで記述されていたRDFグラフ
	define_filter "jsonld"

	# @method n3(options)
	# N3で記述されたメタデータを抽出
	# @param [Hash] options RDF::Reader.newのオプション
	# @return [RDF::Graph] N3で記述されていたRDFグラフ
	define_filter "n3"

end
