describe RDFString::RDFa do
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
