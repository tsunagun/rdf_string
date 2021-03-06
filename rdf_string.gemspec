# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rdf_string/version"

Gem::Specification.new do |s|
  s.name        = "rdf_string"
  s.version     = RDFString::VERSION
  s.authors     = ["tsuna"]
  s.email       = ["tsuna@slis.tsukuba.ac.jp"]
  s.homepage    = ""
  s.summary     = %q{RDF Graph from String}
  s.description = %q{Extract RDF Graph from a instance of String}

  s.rubyforge_project = "rdf_string"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

	s.add_development_dependency "rspec"
	s.add_runtime_dependency "nokogiri"
	s.add_runtime_dependency "rdf"
	s.add_runtime_dependency "rdf-rdfa"
	s.add_runtime_dependency "rdf-microdata"
	s.add_runtime_dependency "rdf-rdfxml"
	s.add_runtime_dependency "json-ld"
	s.add_runtime_dependency "rdf-n3"

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
