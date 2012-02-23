describe RDFString::DCHTML do
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
