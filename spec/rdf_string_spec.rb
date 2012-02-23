require File.join(File.dirname(__FILE__), 'spec_helper')

describe RDFString do
	describe "RDFa" do
		before do
			@uri = "http://linter.structured-data.org/examples/google-rs/review.rdfa.html"
			@str = open(@uri).read
		end
		describe "rdfa?" do
			subject { @str.rdfa? }
			it "be true" do
				should be_true
			end
		end
		describe 'rdfa' do
			subject { @str.rdfa(@uri) }
			it "be triples" do
				should have_at_least(1).triples
			end
		end
	end
	describe "Microdata" do
		before do
			@uri = "http://linter.structured-data.org/examples/google-rs/review.md.html"
			@str = open(@uri).read
		end
		describe "microdata?" do
			subject { @str.microdata? }
			it "be true" do
				should be_true
			end
		end
		describe 'microdata' do
			subject { @str.microdata(@uri) }
			it "be triples" do
				should have_at_least(1).triples
			end
		end
	end
	describe "RDF/XML" do
		before do 
			@uri = "http://ci.nii.ac.jp/nrid/9000017716145.rdf"
			@str = open(@uri).read
		end 
		describe "rdfxml?" do 
			subject { @str.rdfxml? }
			it "be true" do 
				should be_true
			end 
		end
		describe "rdfxml" do
			subject { @str.rdfxml(@uri) }
			it "be triples" do
				should have_at_least(1).triples
			end
		end
	end
	describe "DC-HTML" do
		before do
			@uri = "http://www.aozora.gr.jp/cards/000020/files/2569_28291.html"
			@str = open(@uri).read
		end
		describe "dc_html" do
			subject { @str.dc_html(@uri) }
			it "be triples" do
				should have_at_least(1).triples
			end
		end
	end
end
