RDF String
==========
This is a Ruby Library for extracting RDF Graph from an instance of String.

Features
----------
Create RDF Graph (an instance of RDF::Graph by [RDF.rb](http://rdf.rubyforge.org/)) from an instance of String.

Supported Formats
----------
* RDFa
* Microdata
* RDF/XML
* DC-HTML (RFC2731)
* N3 (isn't tested)
* JSON-LD (isn't tested)

Dependencies
----------
* Ruby (>=1.9.3)
* libxml2
* rake (>=0.9.2)

Install
----------
	git clone https://github.com/tsunagun/rdf_string.git
	cd rdf_string
	rake build
	rake install

Examples
----------
	require 'rdf_string'
	class String
		include RDFString
	end
### RDF Graph from RDFa
	uri = "http://linter.structured-data.org/examples/google-rs/review.rdfa.html"
	doc = open(uri).read
	graph = doc.rdfa
### RDF Graph from Microdata
	uri = "http://linter.structured-data.org/examples/google-rs/review.md.html"
	doc = open(uri).read
	graph = doc.microdata
### RDF Graph from RDFXML
	uri = "http://ci.nii.ac.jp/nrid/9000017716145.rdf"
	doc = open(uri).read
	graph = doc.rdfxml
### RDF Graph from DC-HTML
	uri = "http://www.aozora.gr.jp/cards/000020/files/2569_28291.html"
	doc = open(uri).read
	graph = doc.dc_html

Authors
----------
* [Tsunagu HONMA](http://github.com/tsunagun)

Acknowledgement
----------
I refer to [Structured Data Linter](https://github.com/structured-data/linter).
I use his code to detect formats(RDFa, Microdata, RDF/XML, and so on).
Thanks for all.

License
----------
This is free and unencumbered public domain software. For more information,
see <http://unlicense.org/> or the accompanying {file:UNLICENSE} file.

