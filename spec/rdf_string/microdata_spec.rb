describe RDFString::Microdata do
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
