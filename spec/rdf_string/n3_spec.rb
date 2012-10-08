describe RDFString::N3 do
	before do
		pending 'no example-data is provided'
		@uri = ""
		@str = open(@uri).read
	end
	describe "n3?" do
		subject { @str.n3? }
		it "be true" do
			should be_true
		end
	end
	describe 'n3' do
		subject { @str.n3({:base_uri => @uri}) }
		it "be triples" do
			should have_at_least(1).triples
		end
	end
end
