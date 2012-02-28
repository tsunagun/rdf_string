
describe RDFString::RDFXML do
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
		subject { @str.rdfxml({:base_uri => @uri}) }
		it "be triples" do
			should have_at_least(1).triples
		end
	end
end
