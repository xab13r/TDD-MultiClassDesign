require 'diary_entry'

RSpec.describe DiaryEntry do
	it "constructs correctly" do
		entry = DiaryEntry.new("my title", "my content")
		expect(entry.title).to eq "my title"
		expect(entry.contents).to eq "my content"
		expect(entry.words_count).to eq 2
	end
end