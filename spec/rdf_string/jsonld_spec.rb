describe RDFString::JSON::LD do
	before do
		pending 'no example-data is provided'
		@uri = ""
		@str = open(@uri).read
	end
	describe "jsonld?" do
		subject { @str.jsonld? }
		it "be true" do
			should be_true
		end
	end
	describe 'jsonld' do
		subject { @str.jsonld({:base_uri => @uri}) }
		it "be triples" do
			should have_at_least(1).triples
		end
	end
end
